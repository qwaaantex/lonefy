import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileAppBar extends StatefulWidget {
  final bool isUnderground;
  const ProfileAppBar({super.key, required this.isUnderground});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
      final key = ValueKey(widget.isUnderground);
      return SliverAppBar(
      centerTitle: false,
      pinned: true,
      leading: widget.isUnderground != false ? const SizedBox() :
      Icon(HugeIcons.strokeRoundedProfile, color: Theme.of(context).textTheme.labelSmall!.color,),
      expandedHeight: widget.isUnderground != false ? MediaQuery.of(context).size.height * 0.12 : MediaQuery.of(context).size.height * 0.06,
      toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      title: AnimatedSize(duration: Duration(milliseconds: 200),
        child: widget.isUnderground == false ? Text(key: key,
          S.of(context).Profile, style: TextStyle(color: Theme.of(context).textTheme.labelSmall!.color,
        fontSize: 24, fontFamily: 'lonefyBold')) : const SizedBox(),
      ),
      flexibleSpace: AnimatedSwitcher(duration: Duration(milliseconds: 250),
        child: AnimatedSize(duration: Duration(milliseconds: 250),
          child: widget.isUnderground != false ?
            FlexibleSpaceBar(
              key: key,
              centerTitle: false,
              titlePadding: EdgeInsets.all(12),
              expandedTitleScale: 1,
              title: widget.isUnderground == false ? const SizedBox() :
              Text(S.of(context).Profile, style: Theme.of(context).textTheme.titleMedium,),
              
            )
            : const SizedBox(),
        ),
      ),
    );
  }
}