import 'package:flutter/material.dart';

class SongsChildrenSongsList extends StatefulWidget {
  const SongsChildrenSongsList({super.key});

  @override
  State<SongsChildrenSongsList> createState() => _SongsChildrenSongsListState();
}

class _SongsChildrenSongsListState extends State<SongsChildrenSongsList>
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
    return const Placeholder();
  }
}