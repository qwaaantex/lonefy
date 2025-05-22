import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lonefy/generated/l10n.dart';

class SongsChildrenSearchSongs extends StatelessWidget {
  const SongsChildrenSearchSongs({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return SizedBox(width: 
    MediaQuery.of(context).size.width * 0.9,
    child: Center(
      child: TextFormField(
        controller: controller,
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          prefixIcon: Icon(HugeIcons.strokeRoundedSearch01, color: Theme.of(context).textTheme.labelMedium!.color,),
          suffixIcon: IconButton(onPressed: () {
            controller.clear();
          },
            icon: Icon(Icons.close, color: Theme.of(context).textTheme.labelMedium!.color,)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
          hintText: S.of(context).SearchSongs,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
          fillColor: Theme.of(context).primaryColor,
          filled: true
        ),
      ),
    ),
    );
  }
}