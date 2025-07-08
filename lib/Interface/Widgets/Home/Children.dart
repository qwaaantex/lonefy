import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Home/Children/News.dart';
import 'package:lonefy/Interface/Widgets/Home/Children/YourSongs.dart';
class HomeChildren {
  final List<Widget> _widgets = [
    HomeChildrenYourSongs(),
    HomeChildrenNews()
  ];
  List<Widget> get widgets => _widgets;
}