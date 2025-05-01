import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:provider/provider.dart';

class ProfileTextFormField extends StatelessWidget {
  const ProfileTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<ProfileAboutModel>("ProfileAboutInfo");
    final TextEditingController controller = TextEditingController(text: box.get("value", defaultValue: ProfileAboutModel(text: ""))!.text);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,

      child: Form(
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            filled: true,
            hintText: S.of(context).TellUsAboutYourself,
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            fillColor: Theme.of(context).primaryColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
            ),
            suffixIcon: IconButton(style: IconButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: () {
                context.read<ProfileBloc>().add(ProfileSaveAboutInfo(newText: controller.text));
              }, icon: Icon(CupertinoIcons.checkmark_circle, color: Theme.of(context).textTheme.labelMedium!.color,)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
            )
          ),
          maxLines: 8,),
      ),
    );
  }
}