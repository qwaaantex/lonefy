import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_cubit.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/BackgroundColor.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/Divider.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/ElevatedButton.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/ListView.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/Row.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/Text.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/TextFormField.dart';

class LoginColumn extends StatefulWidget {
  const LoginColumn({super.key});

  @override
  State<LoginColumn> createState() => _LoginColumnState();
}

class _LoginColumnState extends State<LoginColumn>
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
    return Stack(
      children: [
        LoginBackgroundColor(),
        Center(
          child: SizedBox(width: MediaQuery.of(context).size.width * 0.9,
            child: AnimatedSwitcher(duration: Duration(seconds: 10),
              child: Column(key: ValueKey(context.read<LanguageCubit>().state.currentLanguage),
                mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                LoginChildrenText(),
                SizedBox(height: 10,),
                LoginChildrenTextFormField(),
                SizedBox(height: 10,),
                LoginChildrenElevatedButton(),
                SizedBox(height: 10,),
                LoginChildrenDivider(),
                SizedBox(height: 10,),
                LoginChildrenRow(),
                SizedBox(height: 10,),
                
              ],),
            ),
          ),
        ),
          Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: Checkbox.width), child: LoginChildrenListView1(),))
      ],
    );
  }
}