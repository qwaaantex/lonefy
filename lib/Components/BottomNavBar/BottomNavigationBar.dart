import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> pages;
  const BottomNavBar({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IndexPageCubit>();
    return BlocBuilder<IndexPageCubit, IndexPageInitial>(
      builder: (context, state) {
        return GNav(
          onTabChange: (value) {
            cubit.changeIndex(value);
          },
          iconSize: 24,
          gap: 4,
          color: Colors.grey,
          activeColor: Theme.of(context).primaryColor,
          tabMargin: EdgeInsetsGeometry.all(8),
          padding: EdgeInsetsGeometry.all(17),
          duration: Duration(milliseconds: 350),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          tabBorderRadius: 48,
          tabBackgroundColor: Theme.of(context).cardColor,
          tabs: [
            GButton(
              icon: HugeIcons.strokeRoundedHome01,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedMusicNote01,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedUser,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedSettings01,
            )
          ]
);
      },
    );
  }
}