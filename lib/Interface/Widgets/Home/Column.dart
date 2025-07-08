import 'package:flutter/cupertino.dart';
import 'package:lonefy/Interface/Widgets/Home/Children.dart';

class HomeColumn extends StatefulWidget {
  const HomeColumn({super.key});

  @override
  State<HomeColumn> createState() => _HomeColumnState();
}

class _HomeColumnState extends State<HomeColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: HomeChildren().widgets
    );
  }
}