import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';

class ProfileGet extends ProfileState {}

class ProfileSaveAboutInfo extends ProfileState {
  final String newText;

  ProfileSaveAboutInfo({required this.newText});
}