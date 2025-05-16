import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/generated/l10n.dart';

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
          duration: Duration(milliseconds: 350),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          tabBorderRadius: 48,
          tabs: [
            GButton(
              icon: HugeIcons.strokeRoundedHome01,
              text: S.of(context).Main,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedMusicNote01,
              text: S.of(context).Songs,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedUser,
              text: S.of(context).Profile,
            ),
            GButton(
              icon: HugeIcons.strokeRoundedSettings01,
              text: S.of(context).Settings,
            )
          ]
);
      },
    );
  }
}