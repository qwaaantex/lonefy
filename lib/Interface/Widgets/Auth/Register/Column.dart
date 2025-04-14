import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/ElevatedButton.dart';

class RegisterColumn extends StatefulWidget {
  const RegisterColumn({super.key});

  @override
  State<RegisterColumn> createState() => _RegisterColumnState();
}

class _RegisterColumnState extends State<RegisterColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterChildrenElevatedButton()
      ],
    );
  }
}