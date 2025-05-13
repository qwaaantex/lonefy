import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenQuestions extends StatelessWidget {
  const SettingsChildrenQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          ),
        onPressed: () {}, icon: Icon(HugeIcons.strokeRoundedQuestion, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(S.of(context).AskQuestions, style: Theme.of(context).textTheme.labelMedium,),
        ),
        ),
    );
  }
}