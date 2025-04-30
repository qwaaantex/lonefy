import 'package:flutter/material.dart';

class ProfileTextFormField extends StatelessWidget {
  const ProfileTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,

      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).cardColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
            )
          ),
          maxLines: 8,),
      ),
    );
  }
}