import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/Menus/Categories.dart';
import 'package:lonefy/generated/l10n.dart';

class SongsChildrenYourSongs extends StatefulWidget {
  const SongsChildrenYourSongs({super.key});

  @override
  State<SongsChildrenYourSongs> createState() => _SongsChildrenYourSongsState();
}

class _SongsChildrenYourSongsState extends State<SongsChildrenYourSongs> {
  late String? filePath;
  CustomPopupMenuController controller = CustomPopupMenuController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).ThisIsYourSongs, textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelSmall),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoriesMenu(
                  controller: controller,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    onPressed: () {
                      controller.showMenu();
                    }, child: Icon(HugeIcons.strokeRoundedArrowDown01, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,)),
                ),
                SizedBox(width: 10,),
                TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  onPressed: () async {
                  FilePickerResult? result = await FilePicker.platform.pickFiles();
                  if (result != null) {
                    filePath = result.files.single.path!;
                  } else {
                    filePath = null;
                  }
                  }, child: Icon(HugeIcons.strokeRoundedAdd01, color: Theme.of(context).textTheme.labelMedium!.color, size: 24,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}