import 'package:flutter/material.dart';

class ProfileChildrenListTile extends StatelessWidget {
  const ProfileChildrenListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      child: ListTile(
        leading: Icon(Icons.share),
        title: Text(""),
      ),
    );
  }
}