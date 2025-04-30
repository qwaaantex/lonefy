import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

class ComponentsProvider extends ChangeNotifier {
  final Client _client = Client().setEndpoint('https://fra.cloud.appwrite.io/v1')
    .setProject('67fdbc7600141c6c18d9')
    .setSelfSigned(status: true);
  Client get client => _client;
}