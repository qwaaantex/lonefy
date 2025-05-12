import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';


@RoutePage()
class LicenseScreen extends StatelessWidget {
  const LicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          context.router.back();
        }, icon: Icon(HugeIcons.strokeRoundedArrowLeft01, color: Theme.of(context).primaryColor,)),
      ),
      body: Text(""),
    );
  }
}