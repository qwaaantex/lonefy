abstract class ProfileState {}

class ProfileMetrics extends ProfileState {
  final bool isLoaded;
  final String? nameUser;
  final String? emailUser;
  final bool? isAuth;
  ProfileMetrics({required this.isLoaded, this.nameUser, this.emailUser, this.isAuth});
}