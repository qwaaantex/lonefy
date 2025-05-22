import 'package:flutter/widgets.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/ImportSongs.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/SearchSongs.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/YourSongs.dart';

class SongsChildren {
  final List<Widget> _widgets = [
    SongsChildrenSearchSongs(),
    SizedBox(height: 10,),
    SongsChildrenImportSongs(),
    SizedBox(height: 10,),
    SongsChildrenYourSongs(),
  ];
  List<Widget> get widgets => _widgets;
}