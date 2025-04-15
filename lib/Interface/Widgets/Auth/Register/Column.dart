import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/ElevatedButton.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/List.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/Text.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/TextFormField.dart';

class RegisterColumn extends StatefulWidget {
  const RegisterColumn({super.key});

  @override
  State<RegisterColumn> createState() => _RegisterColumnState();
}

class _RegisterColumnState extends State<RegisterColumn>
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
    return Center(
      child: SizedBox(width: MediaQuery.of(context).size.width * 0.9,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RegisterChildrenText(),
            SizedBox(height: 10,),
            RegisterChildrenTextFormField(),
            SizedBox(height: 20,),
            RegisterChildrenList(),
            SizedBox(height: 10,),
            RegisterChildrenElevatedButton()
          ],
        ),
      ),
    );
  }
}