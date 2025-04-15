import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RegisterChildrenList extends StatefulWidget {
  const RegisterChildrenList({super.key});

  @override
  State<RegisterChildrenList> createState() => _RegisterChildrenListState();
}

class _RegisterChildrenListState extends State<RegisterChildrenList> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(context: context, builder: (context) {
          return Column(mainAxisSize: MainAxisSize.min, children: [
            Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),)
          ],);
        });
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.tealAccent, width: 2)),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Hive.box("language").get("value").toString()),
        )),
      ),
    );
  }
}