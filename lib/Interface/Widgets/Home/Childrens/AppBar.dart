import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class HomeChildrenAppBar extends StatefulWidget {
  const HomeChildrenAppBar({super.key});

  @override
  State<HomeChildrenAppBar> createState() => _HomeChildrenAppBarState();
}

class _HomeChildrenAppBarState extends State<HomeChildrenAppBar> {
  @override
  Widget build(BuildContext context) {
    final userName = '';
    return SizedBox(height: MediaQuery.of(context).size.height,
              child: CustomScrollView(slivers: [
      SliverAppBar(backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
        title: Text("${S.of(context).UserHeyAppBar} $userName!"),
      ),)
    ],));
  }
}