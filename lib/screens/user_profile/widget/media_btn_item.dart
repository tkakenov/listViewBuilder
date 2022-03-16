// import 'package:flutter/material.dart';

// class MediaBtnItem extends StatelessWidget {
//   MediaBtnItem({Key? key}) : super(key: key);

//   final List<String> mediaBtnTtitleList = ["DELETE", "ADD"];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,

//       itemBuilder: (context, index) => TextButton(
//         style: TextButton.styleFrom(
//           textStyle: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//           ),
//           side: BorderSide(
//             width: 1,
//             color: Colors.black.withOpacity(0.12),
//           ),
//           primary: const Color(0xFF6200EE),
//           fixedSize: const Size(156, 36),
//         ),
//         onPressed: () {},
//         child: Text(mediaBtnTtitleList[index]),
//       ),
//     );
//   }
// }
