import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';

class ProfileChildrenImage extends StatefulWidget {
  const ProfileChildrenImage({super.key});

  @override
  State<ProfileChildrenImage> createState() => _ProfileChildrenImageState();
}

class _ProfileChildrenImageState extends State<ProfileChildrenImage> {
  @override
  Widget build(BuildContext context) {
    final boxAvatar = Hive.box<ProfileAboutModel>("ProfileAboutInfo");
    String? avatarPath = boxAvatar.get("value")?.avatarPath;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        avatarPath != null ? AnimatedSwitcher(duration: Duration(milliseconds: 300),
          child: CircleAvatar(
            radius: 40,
          backgroundImage: FileImage(File(avatarPath))),
        ) :
        CircleAvatar(radius: 40,
        backgroundImage: AssetImage("lib/Interface/Assets/Images/UnknownUser.png")
        ),
        Positioned(left: MediaQuery.of(context).size.width * 0.12,
        top: MediaQuery.of(context).size.height * 0.06,
          child: GestureDetector(onTap: () async {
            var currentObject = boxAvatar.get("value") ?? ProfileAboutModel();
            final pickedAvatar = await ImagePicker(
            ).pickImage(source: ImageSource.gallery);
            if (pickedAvatar != null) {
              var updatedObject = currentObject.copyWith(avatarPath: pickedAvatar.path);
              await boxAvatar.put("value", updatedObject);
            }
            setState((){
            });
          },
            child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor),
              child: Icon(Icons.add, color: Theme.of(context).textTheme.labelMedium?.color,)),
          )),
       
      ],
    );
  }
}