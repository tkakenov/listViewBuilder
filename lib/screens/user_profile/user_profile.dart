import 'package:flutter/material.dart';
import 'package:listview_app/screens/user_profile/widget/user_btn_list.dart';
import 'package:listview_app/screens/user_profile/widget/user_friends.dart';
import 'package:listview_app/screens/user_profile/widget/user_info.dart';

import '../../models/user.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);
  final List userList = User.getUserList;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserInfo(),
            const UserBtnList(),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF212121),
                ),
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
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("ssdsd"),
              style: ButtonStyle(),
            ),
            const Divider(
              indent: 16,
              endIndent: 16,
            ),
            Text("My media")
          ],
        ),
      ),
    );
  }
}
