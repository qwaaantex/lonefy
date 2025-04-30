import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenTextButton extends StatelessWidget {
  const ProfileChildrenTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * 0.9,
          child: TextButton.icon(style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
            onPressed: () {}, icon: Icon(Icons.change_circle_outlined), label: Text(S.of(context).ResetPassword),)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.9,
          child: TextButton.icon(style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )),
            onPressed: () {}, 
          icon: Icon(Icons.logout), label: Text(S.of(context).Logout),),
        ),
      ],
    );
  }
}