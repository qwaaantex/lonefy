import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IndexPageCubit>();
    return BlocBuilder<IndexPageCubit, IndexPageInitial>(
      builder: (context, state) {
        return BottomNavigationBar(onTap: (value) {
              cubit.changeIndex(value);
            },
            iconSize: 24,
            currentIndex: state.currentIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              items: [
              BottomNavigationBarItem(activeIcon: Icon(HugeIcons.strokeRoundedHome02, size: 25,),
                icon: Icon(HugeIcons.strokeRoundedHome01), label: S.of(context).Main),
              BottomNavigationBarItem(activeIcon: Icon(HugeIcons.strokeRoundedMusicNote01, size: 25,),
                icon: Icon(HugeIcons.strokeRoundedMusicNote02), label: S.of(context).Songs),
              BottomNavigationBarItem(activeIcon: Icon(HugeIcons.strokeRoundedUser, size: 25,),
                icon: Icon(HugeIcons.strokeRoundedUser02), label: S.of(context).Profile),
              BottomNavigationBarItem(activeIcon: Icon(HugeIcons.strokeRoundedSettings02, size: 25,),
                icon: Icon(HugeIcons.strokeRoundedSettings01), label: S.of(context).Settings)
            ]
        );
      },
    );
  }
}