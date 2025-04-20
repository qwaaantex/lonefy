import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/Divider.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/ElevatedButton.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/ListView.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/Row.dart';
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
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
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
        child: Stack(
          children: [
            FadeTransition(opacity: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RegisterChildrenText(),
                  SizedBox(height: 10,),
                  RegisterChildrenTextFormField(),
                  SizedBox(height: 10,),
                  RegisterChildrenElevatedButton(),
                  SizedBox(height: 10,),
                  RegisterChildrenDivider(),
                  SizedBox(height: 10,),
                  RegisterChildrenRow(),
                  SizedBox(height: 10,),
                  
                  
                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: Checkbox.width), child: RegisterChildrenListView1(),))
          ],
        ),
      ),
    );
  }
}