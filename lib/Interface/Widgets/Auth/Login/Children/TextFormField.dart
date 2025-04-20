import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/GestureDetector_1.dart';
import 'package:lonefy/Interface/Widgets/Auth/Login/Children/GestureDetector_2.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenTextFormField extends StatefulWidget {
  const LoginChildrenTextFormField({super.key});

  @override
  State<LoginChildrenTextFormField> createState() => _RegisterChildrenTextFormFieldState();
}

class _RegisterChildrenTextFormFieldState extends State<LoginChildrenTextFormField> {
  bool isConfidentyPassword = false;
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextFormField(
        controller: login,
        decoration: InputDecoration(
          fillColor: Theme.of(context).hintColor,
          filled: true,
          hintText: S.of(context).Email,
          prefixIcon: Icon(CupertinoIcons.at_circle, color: Colors.grey.shade800,),
          suffixIcon: IconButton(onPressed: () {
            login.clear();
          },
          icon: Icon(CupertinoIcons.xmark_circle)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
    
        ),
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: LoginChildrenGestureDetector2()),
      SizedBox(height: 19,),
      TextFormField(
        controller: password,
        obscureText: isConfidentyPassword == false ? true : false,
        decoration: InputDecoration(
          hintText: S.of(context).Password,
          fillColor: Theme.of(context).hintColor,
          filled: true,
          
          prefixIcon: Icon(CupertinoIcons.lock_circle, color: Colors.grey.shade800,),
          suffixIcon: IconButton(onPressed: () {
            setState(() {
              isConfidentyPassword = !isConfidentyPassword;
            });
          },
            icon: AnimatedSwitcher(duration: Duration(milliseconds: 200),
              child: Icon(key: ValueKey(isConfidentyPassword),
                isConfidentyPassword == false ? CupertinoIcons.eye_slash : CupertinoIcons.eye))),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
        ),
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: LoginChildrenGestureDetector1()),
    ],);
  }
}