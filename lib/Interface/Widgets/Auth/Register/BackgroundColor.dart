import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class RegisterBackgroundColor extends StatefulWidget {
  const RegisterBackgroundColor({super.key});

  @override
  State<RegisterBackgroundColor> createState() => _RegisterBackgroundColorState();
}

class _RegisterBackgroundColorState extends State<RegisterBackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: AnimatedMeshGradient(
        colors: const [
          Colors.blueAccent,
          Colors.teal,
          Colors.blue,
          Colors.tealAccent,
        ],
        options: AnimatedMeshGradientOptions(speed: 0.01),
      ),);
  }
}