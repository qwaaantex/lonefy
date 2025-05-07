abstract class ProfileState {}

class ProfileMetrics extends ProfileState {
  final bool? isLoaded;
  final String? nameUser;
  final String? emailUser;
  final bool? isAuth;
  final String? status;
  final double? reputation;
  ProfileMetrics({this.isLoaded, this.nameUser, this.emailUser, this.isAuth, this.reputation, this.status});

  ProfileMetrics copyWith({
    final bool? isLoaded,
    final String? nameUser,
    final String? emailUser,
    final bool? isAuth,
    final String? status,
    final double? reputation,
    }) {
    return ProfileMetrics(
      isLoaded: isLoaded ?? this.isLoaded,
      nameUser: nameUser ?? this.nameUser,
      emailUser: emailUser ?? this.emailUser,
      isAuth: isAuth ?? this.isAuth,
      status: status ?? this.status,
      reputation: reputation ?? this.reputation
      );
  }
}