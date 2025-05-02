import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileChildrenImage extends StatefulWidget {
  const ProfileChildrenImage({super.key});

  @override
  State<ProfileChildrenImage> createState() => _ProfileChildrenImageState();
}

class _ProfileChildrenImageState extends State<ProfileChildrenImage> {
  XFile? avatar;
  bool isLoadedAvatar = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        isLoadedAvatar != false ? AnimatedSwitcher(duration: Duration(milliseconds: 300),
          child: CircleAvatar(key: ValueKey(isLoadedAvatar),
            radius: 40,
          backgroundImage: FileImage(File(avatar!.path))),
        ) :
        CircleAvatar(radius: 40,
        backgroundImage: AssetImage("lib/Interface/Assets/Images/unknown.png")
        ),
        Positioned(left: MediaQuery.of(context).size.width * 0.12,
        top: MediaQuery.of(context).size.height * 0.06,
          child: GestureDetector(onTap: () async {
            final pickedAvatar = await ImagePicker(
            ).pickImage(source: ImageSource.gallery);
            setState((){
              if(pickedAvatar != null) {
                avatar = pickedAvatar;
                isLoadedAvatar = true;
              } else {
                isLoadedAvatar = false;
              }
            });
          },
            child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor),
              child: Icon(Icons.add, color: Theme.of(context).textTheme.labelMedium?.color,)),
          )),
       
      ],
    );
  }
}