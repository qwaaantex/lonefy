import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/Widgets/SongInfo/Children/Text.dart';

class SongInfoChildrenContainer extends StatefulWidget {
  final String author;
  final String name;
  const SongInfoChildrenContainer({super.key, required this.author, required this.name});

  @override
  State<SongInfoChildrenContainer> createState() => _SongInfoChildrenContainerState();
}

class _SongInfoChildrenContainerState extends State<SongInfoChildrenContainer>
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
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SongInfoChildrenText(name: widget.name, author: widget.author),
          ],
        ),
      )
    );
  }
}