import 'package:flutter/material.dart';

class ProductBackground extends StatelessWidget {
  final screenHeight;
  final int colorId;
  const ProductBackground(
      {super.key, required this.screenHeight, required this.colorId});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    Color _backgroundColor(int id) {
      Color color;
      if (id == 0) {
        color = Color(0xFF0279A5);
      } else if (id == 1) {
        color = Color(0xFF62184D);
      } else if (id == 2) {
        color = Colors.green;
      } else if (id == 3) {
        color = Color(0xFFF3BCC2);
      } else if (id == 4) {
        color = Color(0xFF90D3ED);
      } else if (id == 5) {
        color = Color(0xFFFFD082);
      } else {
        color = Colors.green;
      }

      return color;
    }

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight,
        color: _backgroundColor(this.colorId),
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveEndPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
