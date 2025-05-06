import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/cubit/status_cubit.dart';
import 'package:lonefy/generated/l10n.dart';

class StatusMenu extends StatefulWidget {
  final Widget? child;
  final CustomPopupMenuController controller;
  const StatusMenu({super.key, required this.controller, this.child});

  @override
  State<StatusMenu> createState() => _StatusMenuState();

  void changeState(bool isShowing) {
    if (isShowing) {
      controller.showMenu();
    } else {
      controller.hideMenu();
    }
  }
}

class _StatusMenuState extends State<StatusMenu> with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 350));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.reverse();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Color iconColor = Colors.white;
    final cubit = context.read<StatusCubit>();
    final TextStyle textStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);
    return FadeTransition(
    opacity: _animation,
      child: CustomPopupMenu(
        showArrow: false,
        position: PreferredPosition.bottom,
        controller: widget.controller, menuBuilder: () =>
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).scaffoldBackgroundColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Theme.of(context).primaryColor),
                  onPressed: () {
                    cubit.changeStatus(S.of(context).Listening);
                    widget.controller.hideMenu();
                  },
                  child: Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.music_note, color: iconColor),
                    SizedBox(width: 5),
                    Text(S.of(context).Listening, style: textStyle)
                  ],
                                ),
                ),
              TextButton(onPressed: () {
                cubit.changeStatus(S.of(context).Resting);
                widget.controller.hideMenu();
              },
                style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.forest, color: iconColor),
                    SizedBox(width: 5),
                    Text(S.of(context).Resting, style: textStyle,),
                  ],
                ),
              ),
              TextButton(onPressed: () {
                cubit.changeStatus(S.of(context).Playing);
                widget.controller.hideMenu();
              },
                style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                child: Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.games, color: iconColor),
                    SizedBox(width: 5),
                    Text(S.of(context).Playing, style: textStyle,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(width: MediaQuery.of(context).size.width * 0.26,
                child: TextField(
                  style: textStyle,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColor,
                    filled: true,
                    hintText: S.of(context).Customize,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(12))
                  ),
                ))
            ],),
          ),
        ), pressType: PressType.singleClick,
        child: widget.child ?? Text("Error")),
    );
  }

  
}