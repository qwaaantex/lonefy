import 'package:flutter/widgets.dart';
import 'package:lonefy/Interface/Widgets/Songs/Children/YourSongs.dart';

class SongsChildren {
  final List<Widget> _widgets = [
    SongsChildrenYourSongs()
  ];
  List<Widget> get widgets => _widgets;
}