import 'package:flutter/material.dart';

class RegisterChildrenModalBottomSheet extends StatefulWidget {
  const RegisterChildrenModalBottomSheet({super.key});

  @override
  State<RegisterChildrenModalBottomSheet> createState() => _RegisterChildrenModalBottomSheetState();
}

class _RegisterChildrenModalBottomSheetState extends State<RegisterChildrenModalBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _offsetAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final languages = [
      "English",
      "Русский",
      "Français"
    ];
    final languagesLogo = [
      "lib/Interface/Assets/English.png"
      "lib/Interface/Assets/Russia.png"
      "lib/Interface/Assets/France.png"
    ];
    return SlideTransition(position: _offsetAnimation, child: Container(
      color: Theme.of(context).canvasColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
        ListView.builder(itemBuilder: (context, index) {
          return ListTile(title: Text(languages[index]), leading: CircleAvatar(child: Image.asset(languagesLogo[index])),);
        })
      ],),
    ));
  }
}