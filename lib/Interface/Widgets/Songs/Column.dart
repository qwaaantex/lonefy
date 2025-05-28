import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Songs/AddSongs/BLoc/AddSongs_bloc.dart';
import 'package:lonefy/Data/BLocs/Songs/AddSongs/BLoc/AddSongs_state.dart';
import 'package:lonefy/Interface/Widgets/Songs/AppBar.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children.dart';

class SongsColumn extends StatefulWidget {
  const SongsColumn({super.key});

  @override
  State<SongsColumn> createState() => _SongsColumnState();
}

class _SongsColumnState extends State<SongsColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late ScrollController controller;
  bool isUnderground = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    controller =
        ScrollController()..addListener(() {
          if (controller.offset <= 0.1) {
            setState(() {
              isUnderground = true;
            });
          } else {
            setState(() {
              isUnderground = false;
            });
          }
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SongsAppBar(isUnderground: isUnderground),
        SliverFillRemaining(
          child: SingleChildScrollView(
            controller: controller,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: BlocBuilder<AddSongsBloc, AddSongsInitial>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: SongsChildren().widgets,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
