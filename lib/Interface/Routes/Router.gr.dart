// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:lonefy/Interface/Screens/Auth/Login.dart' as _i3;
import 'package:lonefy/Interface/Screens/Auth/Register.dart' as _i5;
import 'package:lonefy/Interface/Screens/Home.dart' as _i1;
import 'package:lonefy/Interface/Screens/Profile.dart' as _i4;
import 'package:lonefy/Interface/Screens/Settings.dart' as _i7;
import 'package:lonefy/Interface/Screens/Songs.dart' as _i9;
import 'package:lonefy/Interface/Screens/Sub.dart' as _i10;
import 'package:lonefy/Interface/Widgets/Auth/Screens/ForgotPasswordScreen.dart'
    as _i6;
import 'package:lonefy/Interface/Widgets/Settings/Children/Screens/License.dart'
    as _i2;
import 'package:lonefy/Interface/Widgets/Songs/Children/Screens/SongInfo.dart'
    as _i8;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LicenseScreen]
class LicenseRoute extends _i11.PageRouteInfo<void> {
  const LicenseRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LicenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'LicenseRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.LicenseScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i5.RegisterScreen]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.RegisterScreen();
    },
  );
}

/// generated route for
/// [_i6.RegisterScreensForgotPasswordScreen]
class RegisterRoutesForgotPasswordRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoutesForgotPasswordRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoutesForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoutesForgotPasswordRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.RegisterScreensForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i8.SongsChildrenScreensSongsInfoScreen]
class SongsChildrenRoutesSongsInfoRoute
    extends _i11.PageRouteInfo<SongsChildrenRoutesSongsInfoRouteArgs> {
  SongsChildrenRoutesSongsInfoRoute({
    _i12.Key? key,
    required String author,
    required String name,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SongsChildrenRoutesSongsInfoRoute.name,
          args: SongsChildrenRoutesSongsInfoRouteArgs(
            key: key,
            author: author,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'SongsChildrenRoutesSongsInfoRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SongsChildrenRoutesSongsInfoRouteArgs>();
      return _i8.SongsChildrenScreensSongsInfoScreen(
        key: args.key,
        author: args.author,
        name: args.name,
      );
    },
  );
}

class SongsChildrenRoutesSongsInfoRouteArgs {
  const SongsChildrenRoutesSongsInfoRouteArgs({
    this.key,
    required this.author,
    required this.name,
  });

  final _i12.Key? key;

  final String author;

  final String name;

  @override
  String toString() {
    return 'SongsChildrenRoutesSongsInfoRouteArgs{key: $key, author: $author, name: $name}';
  }
}

/// generated route for
/// [_i9.SongsScreen]
class SongsRoute extends _i11.PageRouteInfo<void> {
  const SongsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SongsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SongsScreen();
    },
  );
}

/// generated route for
/// [_i10.SubScreen]
class SubRoute extends _i11.PageRouteInfo<void> {
  const SubRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SubRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SubScreen();
    },
  );
}
