import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenContainer extends StatelessWidget {
  const ProfileChildrenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      child: Stack(
        children: [
          Center(child: Text(S.of(context).SecurityAccount)),
        ],
      ),
    );
  }
}