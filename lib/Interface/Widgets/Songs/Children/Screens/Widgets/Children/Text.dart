import 'package:flutter/cupertino.dart';

class SongInfoChildrenText extends StatelessWidget {
  final String name;
  final String author;
  const SongInfoChildrenText({super.key, required this.name, required this.author});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name),
      Text(author),
    ],);
  }
}