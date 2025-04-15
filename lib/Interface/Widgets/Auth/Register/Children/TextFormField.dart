import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenTextFormField extends StatelessWidget {
  const RegisterChildrenTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextFormField(
        decoration: InputDecoration(
          fillColor: Theme.of(context).hintColor,
          filled: true,
          hintText: S.of(context).Email,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
    
        ),
      ),
      SizedBox(height: 10,),
      TextFormField(
        decoration: InputDecoration(
          hintText: S.of(context).Password,
          fillColor: Theme.of(context).hintColor,
          filled: true,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none)
        ),
      )
    ],);
  }
}