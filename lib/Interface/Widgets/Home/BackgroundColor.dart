import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class HomeBackgroundColor extends StatelessWidget {
  const HomeBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(constraints: BoxConstraints.expand(),
      child: AnimatedMeshGradient(colors: [
        Colors.blueAccent,
        Colors.teal,
        Colors.blue,
        Colors.tealAccent,
      ], options: AnimatedMeshGradientOptions()),
    );
  }
}