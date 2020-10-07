import 'package:flutter/material.dart';

class MyTriangularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 80);

    path.quadraticBezierTo(
        0.3 * size.width, size.height, 0.68 * size.width, size.height - 80);

    path.lineTo(0.68 * size.width, size.height - 80);

    path.quadraticBezierTo(
        0.8416 * size.width, size.height - 120, size.width, size.height - 80);

    path.lineTo(size.width, size.height - 80);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
