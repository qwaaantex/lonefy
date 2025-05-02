import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:image/image.dart' as img;



class ProfileChildrenBackgroundImage extends StatefulWidget {
  const ProfileChildrenBackgroundImage({super.key});

  @override
  State<ProfileChildrenBackgroundImage> createState() => _ProfileChildrenBackgroundImageState();
}

class _ProfileChildrenBackgroundImageState extends State<ProfileChildrenBackgroundImage> {
  XFile? backgroundImage;
  bool isBackgroundImageLoaded = false;

  void getBackgroundImage() async {
    final XFile? pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        final bytes = await File(pickedImage.path).readAsBytes();
        print(img.decodeImage(bytes)!.width);
          setState(() {
            backgroundImage = pickedImage;
            isBackgroundImageLoaded = true;
          });
        
      } else {
        setState(() {
          isBackgroundImageLoaded = false;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 0.5, color: Theme.of(context).primaryColor), color: Theme.of(context).cardColor),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.1,
          child: isBackgroundImageLoaded != false ? ClipRRect(borderRadius: BorderRadius.circular(12),
            child: ExtendedImage.file(fit: BoxFit.fitWidth,
              File(backgroundImage!.path)),
          ) :
          Center(child: Text(S.of(context).AddBackgroundImage, style: Theme.of(context).textTheme.labelSmall,)),
        ),
        Positioned(left: MediaQuery.of(context).size.width * 0.82,
        top: MediaQuery.of(context).size.height * 0.01,
          child: GestureDetector(onTap: () async {
            getBackgroundImage();
          },
            child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor),
              child: Icon(Icons.add, color: Theme.of(context).textTheme.labelMedium?.color,)),
          )),
      ],
    );
  }
}