import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';

class SettingsLicence extends StatelessWidget {
  const SettingsLicence({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor),
      child: IconButton(onPressed: () {
        context.router.navigate(LicenseRoute());
      },
        icon: Icon(HugeIcons.strokeRoundedArrowDown01, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,)),
    );
  }
}