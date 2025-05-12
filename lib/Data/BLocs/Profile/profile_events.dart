import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';

class ProfileGet extends ProfileState {}

class ProfileSaveAboutInfo extends ProfileState {
  final String newText;

  ProfileSaveAboutInfo({required this.newText});
}

class ProfileStatusInfo extends ProfileState {
  final String newStatus;
  ProfileStatusInfo({required this.newStatus});
}

class ProfileReputationInfo extends ProfileState {
  final double newReputation;
  ProfileReputationInfo({required this.newReputation});
}

class ProfileChangeNameInfo extends ProfileState {
  final String newName;
  ProfileChangeNameInfo({required this.newName});
}