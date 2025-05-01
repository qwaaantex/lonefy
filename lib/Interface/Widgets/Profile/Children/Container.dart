import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenContainer extends StatelessWidget {
  const ProfileChildrenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).primaryColor),
      child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).SecurityAccount, style: Theme.of(context).textTheme.labelMedium,),
          SizedBox(width: 5,),
          IconButton(onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedArrowRight01, color: Theme.of(context).textTheme.labelMedium!.color, size: 28,))
        ],
      )),
    );
  }
}