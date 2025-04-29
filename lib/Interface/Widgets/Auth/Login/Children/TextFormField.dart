import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/Providers/Login/Provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final LoginProvider provider = context.select((LoginProvider provider) => provider);
    TextEditingController login = context.read<LoginProvider>().emailController;
    TextEditingController password = context.read<LoginProvider>().passwordController;
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Form(
        key: provider.emailForm,
        child: TextFormField(
          controller: login,
          onChanged: (value) => provider.changeEmail(value),
          validator: (value) {
            if (value!.isEmpty || provider.emailController.text.isEmpty) {
              return S.of(context).EmailIsNotEmpty;
            } else if(!value.contains("@") || !provider.emailController.text.contains("@")) {
              return S.of(context).EmailMustContain;
            } else if (value.length <= 3 || provider.emailController.text.length <= 3) {
              return S.of(context).EmailMustBeLonger;
            }
            return null;
          },
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
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: LoginChildrenGestureDetector2()),
      SizedBox(height: 19,),
      Form(
        key: provider.passwordForm,
        child: TextFormField(
          controller: password,
          onChanged: (value) => provider.changePassword(value),
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
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: LoginChildrenGestureDetector1()),
    ],);
  }
}