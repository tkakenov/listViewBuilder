import 'package:flutter/material.dart';
import 'package:listview_app/resources/resources.dart';
import 'package:listview_app/screens/user_profile/widget/user_btn_list.dart';
import 'package:listview_app/screens/user_profile/widget/user_friends.dart';
import 'package:listview_app/screens/user_profile/widget/user_info.dart';
import 'package:listview_app/screens/user_profile/widget/user_my_media.dart';

import '../../models/user.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);
  final List<User> userList = User.getUserList();
  final List<String> images = [
    UserImages.rect6,
    UserImages.rect7,
    UserImages.rect8,
    UserImages.rect9,
    UserImages.rect10,
    UserImages.rect11,
    UserImages.rect12,
    UserImages.rect13,
    UserImages.rect14
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserInfo(),
              const UserBtnList(),
              const Text(
                "Friends",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF212121),
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, _) => const Divider(
                  indent: 71,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: userList.length,
                itemBuilder: (context, index) => UserFriends(
                  name: userList[index].name,
                  position: userList[index].position,
                  image: userList[index].image,
                ),
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    side: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.12),
                    ),
                    primary: Colors.black.withOpacity(0.87),
                    fixedSize: const Size(560, 36),
                  ),
                  onPressed: () {},
                  child: const Text("ADD FRIEND"),
                ),
              ),
              const Divider(),
              const Text(
                "My media",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF212121),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 17,
                  mainAxisSpacing: 13,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) =>
                    UserMyMedia(image: images[index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.12),
                      ),
                      primary: const Color(0xFF6200EE),
                      fixedSize: const Size(156, 36),
                    ),
                    onPressed: () {},
                    child: const Text("DELETE"),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.12),
                      ),
                      primary: const Color(0xFF6200EE),
                      fixedSize: const Size(156, 36),
                    ),
                    onPressed: () {},
                    child: const Text("ADD"),
                  ),
                ],
              ),
              const Divider(
                indent: 108,
                endIndent: 108,
                thickness: 3,
                height: 16,
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
