// import 'package:flutter/material.dart';
//
// import '../model/model_on_boarding.dart';
// class OnBoardingPageWidget extends StatelessWidget {
//   const OnBoardingPageWidget({
//     Key? key,
//     required this.model,
//   }) : super(key: key);
//
//   final OnBoardingModel model;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(30.0),
//       color: model.bgColor,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Image(image: AssetImage(model.image),height: model.height * 0.4),
//           Column(
//             children: [
//               Text(model.title, style: Theme.of(context).textTheme.headline5,),
//               Text(model.subTitle, textAlign: TextAlign.center,),
//             ],
//           ),
//           Text(model.counterText),
//           SizedBox(height: 50.0,)
//         ],
//       ),
//     );
//   }
// }