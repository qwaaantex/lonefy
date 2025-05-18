import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lonefy/Interface/Widgets/Songs/Column.dart';

@RoutePage()
class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SizedBox(
    child: SongsColumn(),),));
  }
}