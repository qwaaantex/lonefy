import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Home/Column.dart';


@RoutePage()

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeColumn(),);
  }
}