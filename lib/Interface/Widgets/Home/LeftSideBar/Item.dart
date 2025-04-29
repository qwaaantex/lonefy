import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftSideBarItem extends StatelessWidget {
  final Widget child;
  const LeftSideBarItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: 
    BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor), 
    child: child,);
  }
}