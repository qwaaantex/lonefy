import 'package:flutter/cupertino.dart';

class RightSideBarItem extends StatelessWidget {
  final Widget child;
  const RightSideBarItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(shape: BoxShape.circle),
      child: child,);
  }
}