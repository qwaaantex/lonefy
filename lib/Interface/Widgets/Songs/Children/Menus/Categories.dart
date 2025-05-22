import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class CategoriesMenu extends StatefulWidget {
  final CustomPopupMenuController controller;
  final Widget child;
  const CategoriesMenu({super.key, required this.child, required this.controller});

  @override
  State<CategoriesMenu> createState() => _CategoriesMenuState();
}

class _CategoriesMenuState extends State<CategoriesMenu> {
  
  @override
  Widget build(BuildContext context) {
    final List categories = [
      S.of(context).Rock,
      S.of(context).HipHop,
      S.of(context).Fonk,
      S.of(context).Funk,
    ];
    return CustomPopupMenu(
      showArrow: true,
      arrowColor: Theme.of(context).scaffoldBackgroundColor,
      controller: widget.controller,
      menuBuilder: () {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).scaffoldBackgroundColor),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.25,
        child: Center(
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
            return Column(mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).cardColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                  onPressed: () {}, child: Text(categories[index], style: Theme.of(context).textTheme.labelSmall,)),
                  SizedBox(height: 5,)
              ],
            );
          }),
        ),
      );
    },pressType: PressType.singleClick, child: widget.child);
  }
}