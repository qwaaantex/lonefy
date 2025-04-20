import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class LoginBackgroundColor extends StatelessWidget {
  const LoginBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(constraints: BoxConstraints.expand(),
      child: AnimatedMeshGradient(colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.blue,
      Colors.orangeAccent,
    ], options: AnimatedMeshGradientOptions(speed: 0.01)),);
  }
}