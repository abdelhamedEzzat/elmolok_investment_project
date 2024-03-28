// import 'package:flutter/material.dart';

// class CirclesBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: CustomPaint(
//         size: Size(double.infinity, 200),
//         painter: CirclesBarPainter(),
//       ),
//     );
//   }
// }

// class CirclesBarPainter extends CustomPainter {
//   final List<int> circlesData = [1, 2, 3]; // بيانات الدوائر

//   @override
//   void paint(Canvas canvas, Size size) {
//     final double circleRadius = 20;
//     final double paddingBetweenCircles = 40;
//     final Paint circlePaint = Paint()..color = Colors.blue;
//     final Paint linePaint = Paint()..color = Colors.grey;

//     double startX = 20;
//     double startY = size.height / 2;

//     // رسم الدوائر والخطوط بناءً على بيانات الدوائر
//     for (int i = 0; i < circlesData.length; i++) {
//       canvas.drawCircle(Offset(startX, startY), circleRadius, circlePaint);

//       if (i < circlesData.length - 1) {
//         canvas.drawLine(
//           Offset(startX + circleRadius * 2 + paddingBetweenCircles, startY),
//           Offset(startX + circleRadius * 2 + paddingBetweenCircles * 2, startY),
//           linePaint,
//         );
//       }

//       startX += circleRadius * 2 + paddingBetweenCircles * 2;
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
