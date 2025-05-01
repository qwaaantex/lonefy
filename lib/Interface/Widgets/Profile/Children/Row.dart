import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Items/RowItem.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileCHildrenRow extends StatelessWidget {
  const ProfileCHildrenRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
        Expanded(child: ProfileChildrenItemsRowItem(onPressed: () {}, subchild: Icon(Icons.music_note, color: Theme.of(context).textTheme.labelSmall?.color, size: 20,), child: Text(S.of(context).Songs, style: Theme.of(context).textTheme.labelSmall,))),
        SizedBox(width: 10,),
        Expanded(child: ProfileChildrenItemsRowItem(onPressed: () {}, subchild: Icon(Icons.playlist_play, size: 20, color: Theme.of(context).textTheme.labelSmall!.color,), child: Text(S.of(context).Playlists, style: Theme.of(context).textTheme.labelSmall,)))
      ],),
      SizedBox(height: 10,),
      Row(children: [
        Expanded(child: ProfileChildrenItemsRowItem(onPressed: () {}, subchild: Icon(CupertinoIcons.person_2_fill, size: 20, color: Theme.of(context).textTheme.labelSmall!.color,),child: Text(S.of(context).Performers, style: Theme.of(context).textTheme.labelSmall,),)),
        SizedBox(width: 10,),
        Expanded(child: ProfileChildrenItemsRowItem(onPressed: () {}, subchild: Icon(CupertinoIcons.person_3_fill, size: 20, color: Theme.of(context).textTheme.labelSmall!.color,), child: Text(S.of(context).Singers, style: Theme.of(context).textTheme.labelSmall,)))
      ],)
    ],);
  }
}