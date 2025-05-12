import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;



class ProfileChildrenBackgroundImage extends StatefulWidget {
  const ProfileChildrenBackgroundImage({super.key});

  @override
  State<ProfileChildrenBackgroundImage> createState() => _ProfileChildrenBackgroundImageState();
}

class _ProfileChildrenBackgroundImageState extends State<ProfileChildrenBackgroundImage> {
  String? backgroundImagePath = Hive.box<ProfileAboutModel>("ProfileAboutInfo").get("value")?.backgroundImagePath;

  Future<void> getBackgroundImage() async {
    final XFile? pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        final box = Hive.box<ProfileAboutModel>("ProfileAboutInfo");
        var currentObject = box.get("value") ?? ProfileAboutModel();
        var updatedObject = currentObject.copyWith(backgroundImagePath: pickedImage.path);
        await box.put("value", updatedObject);
        setState(() {
          backgroundImagePath = pickedImage.path;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      onTap: () async {
        await getBackgroundImage();
      },
      position: badges.BadgePosition.topEnd(end: 5, top: 5),
      badgeStyle: badges.BadgeStyle(
        badgeColor: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(0.0)
      ),
      badgeContent: Icon(Icons.add, color: Theme.of(context).textTheme.labelMedium?.color,),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 0.5, color: Theme.of(context).primaryColor), color: Theme.of(context).cardColor),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.1,
        child: backgroundImagePath != null ? ClipRRect(borderRadius: BorderRadius.circular(12),
          child: ExtendedImage.file(fit: BoxFit.fitWidth,
            File(backgroundImagePath!)),
        ) :
        Center(child: Text(S.of(context).AddBackgroundImage, style: Theme.of(context).textTheme.labelSmall,)),
      ),
    
    );
  }
}