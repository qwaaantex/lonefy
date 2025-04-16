import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/GestureDetector_1.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/GestureDetector_2.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenTextFormField extends StatefulWidget {
  const RegisterChildrenTextFormField({super.key});

  @override
  State<RegisterChildrenTextFormField> createState() => _RegisterChildrenTextFormFieldState();
}

class _RegisterChildrenTextFormFieldState extends State<RegisterChildrenTextFormField> {
  bool isConfidentyPassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextFormField(
        decoration: InputDecoration(
          fillColor: Theme.of(context).hintColor,
          filled: true,
          hintText: S.of(context).Email,
          prefixIcon: Icon(CupertinoIcons.at_circle, color: Colors.grey.shade800,),
          suffixIcon: Icon(CupertinoIcons.xmark_circle),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
    
        ),
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: RegisterChildrenGestureDetector2()),
      SizedBox(height: 19,),
      TextFormField(
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
        child: RegisterChildrenGestureDetector1()),
    ],);
  }
}