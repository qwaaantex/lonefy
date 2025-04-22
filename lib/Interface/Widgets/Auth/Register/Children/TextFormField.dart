import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Data/Providers/Register/Provider.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/GestureDetector_1.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/GestureDetector_2.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:provider/provider.dart';

class RegisterChildrenTextFormField extends StatefulWidget {
  const RegisterChildrenTextFormField({super.key});

  @override
  State<RegisterChildrenTextFormField> createState() => _RegisterChildrenTextFormFieldState();
}

class _RegisterChildrenTextFormFieldState extends State<RegisterChildrenTextFormField> {
  bool isConfidentyPassword = false;

  @override
  Widget build(BuildContext context) {
    final RegisterProvider provider = context.read<RegisterProvider>();
    final keyLogin = provider.keyLogin;
    final keyPassword = provider.keyPassword;
    TextEditingController login = provider.controllerEmail;
    TextEditingController password = provider.controllerPassword;
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Form(
        key: keyLogin,
        child: TextFormField(
          controller: login,
          onChanged: (value) {
            provider.changeEmail(value);
          },
          validator: (value) {
            if (value!.isEmpty || provider.controllerEmail.text.isEmpty) {
              return S.of(context).EmailIsNotEmpty;
            } else if(!value.contains("@") || !provider.controllerEmail.text.contains("@")) {
              return S.of(context).EmailMustContain;
            } else if (value.length <= 3 || provider.controllerEmail.text.length <= 3) {
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
            icon: Icon(CupertinoIcons.xmark_circle, color: Colors.grey.shade800,)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
            
          ),
        ),
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: RegisterChildrenGestureDetector2()),
      SizedBox(height: 19,),
      Form(
        key: keyPassword,
        child: TextFormField(
          controller: password,
          validator: (value) {
            if (value!.isEmpty || provider.controllerPassword.text.isEmpty) {
              return S.of(context).PasswordIsNotEmpty;
            }
            else if (value.length <= 6 || provider.controllerPassword.text.length <= 6) {
              return S.of(context).PasswordMustBeLonger;
            }
            return null;
          },
          onChanged: (value) {
            provider.changePassword(value);
          },
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
                  isConfidentyPassword == false ? CupertinoIcons.eye_slash : CupertinoIcons.eye, color: Colors.grey.shade800,))),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
          ),
        ),
      ),
      SizedBox(height: 10,),
      Align(alignment: Alignment.centerRight,
        child: RegisterChildrenGestureDetector1()),
    ],);
  }
}