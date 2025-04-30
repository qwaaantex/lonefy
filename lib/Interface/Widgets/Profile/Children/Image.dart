import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ProfileChildrenImage extends StatelessWidget {
  const ProfileChildrenImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(left: MediaQuery.of(context).size.width * 0.14,
        top: MediaQuery.of(context).size.height * 0.07,
          child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).cardColor),
            child: Icon(Icons.add))),
        Container(height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).cardColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Icon(HugeIcons.strokeRoundedRobot01, size: 70,),),
        ),
        ),
        
      ],
    );
  }
}