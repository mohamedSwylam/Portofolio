// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// class AnimatedBtn extends StatelessWidget {
//   AnimatedBtn({
//     super.key,
//     // required RiveAnimationController btnAnimationController,
//     required this.press,
//     required this.title,
//   });

//   // final RiveAnimationController _btnAnimationController;
//   final VoidCallback press;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: SizedBox(
//         height: 64,
//         width: 236,
//         child: Stack(
//           children: [
//             RiveAnimation.asset(
//               "assets/rive/button.riv",
//               // controllers: [_btnAnimationController],
//             ),
//             Positioned.fill(
//               top: 8,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(CupertinoIcons.arrow_right),
//                   const SizedBox(width: 8),
//                   Text(
//                     title,
//                     style: Theme.of(context).textTheme.labelLarge,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
