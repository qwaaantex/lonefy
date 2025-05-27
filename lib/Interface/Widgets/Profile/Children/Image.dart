
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:badges/badges.dart' as badges;
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
    return avatarPath != null ? AnimatedSwitcher(duration: Duration(milliseconds: 300),
      child: badges.Badge(
        position: badges.BadgePosition.bottomEnd(end: 0),
        badgeStyle: badges.BadgeStyle(
          padding: EdgeInsets.all(0.0),
          elevation: 0,
          badgeColor: Theme.of(context).primaryColor),
        onTap: () async {
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
      badgeContent: Icon(Icons.add, color: Theme.of(context).textTheme.labelMedium?.color,),
      child: CircleAvatar(
        radius: 30,
        onBackgroundImageError: (exception, stackTrace) {
          setState(() {
            avatarPath = null;
          });
        },
      backgroundImage: FileImage(File(avatarPath))),
    )) :
    CircleAvatar(radius: 30,
      backgroundImage: AssetImage("lib/Interface/Assets/Images/UnknownUser.png")
      );
  }
}