import 'package:flutter/cupertino.dart';
import 'package:lonefy/Interface/Widgets/Home/Childrens/AppBar.dart';
import 'package:lonefy/Interface/Widgets/Home/Childrens/ListWheelScrollView.dart';

class HomeColumn extends StatefulWidget {
  const HomeColumn({super.key});

  @override
  State<HomeColumn> createState() => _HomeColumnState();
}

class _HomeColumnState extends State<HomeColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeTransition(opacity: _animation, child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeChildrenAppBar(),
        ],),),
        Align(alignment: Alignment.center, child: HomeChildrenListWheelScrollView(),),
      ],
    );
  }
}