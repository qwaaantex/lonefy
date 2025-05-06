import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:share_plus/share_plus.dart';

class ProfileChildrenListTile extends StatelessWidget {
  const ProfileChildrenListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    )),
      onPressed: () {
        SharePlus.instance.share(ShareParams(text: S.of(context).ShareText));
      },
      child: SizedBox(width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: ListTile(
            leading: Icon(Icons.share, color: Theme.of(context).textTheme.labelMedium!.color, size: 20,),
            title: Text(S.of(context).ShareWithOthers, style: Theme.of(context).textTheme.labelMedium,),
            trailing: Icon(CupertinoIcons.arrow_right, color: Theme.of(context).textTheme.labelMedium!.color, size: 20,),
          ),
        ),
      ),
    );
  }
}