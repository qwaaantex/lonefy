import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeChildrenListWheelScrollView extends StatefulWidget {
  const HomeChildrenListWheelScrollView({super.key});

  @override
  State<HomeChildrenListWheelScrollView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeChildrenListWheelScrollView> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(itemExtent: 30, children: [
      

    ],);
  }
}