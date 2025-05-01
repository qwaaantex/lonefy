import 'package:flutter/material.dart';

class ProfileChildrenItemsRowItem extends StatelessWidget {
  final Widget child;
  final Widget subchild;
  final Function onPressed;
  const ProfileChildrenItemsRowItem({super.key, required this.child, required this.onPressed, required this.subchild});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed,
      style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), backgroundColor: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            subchild,
            SizedBox(height: 5,),
            child,
          ],
        ),
      ),
    );
  }
}