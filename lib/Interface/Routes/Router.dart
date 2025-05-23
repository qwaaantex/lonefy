// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:lonefy/Interface/Routes/Guards/AuthGuard.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';

@AutoRouterConfig()

// ignore: camel_case_types
class lonefyRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/', guards: [AuthGuard()], initial: true),
    AutoRoute(page: RegisterRoute.page, path: '/sign'),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: SongsRoute.page, path: '/songs'),
    AutoRoute(page: ProfileRoute.page, path: '/profile', guards: [AuthGuard()]),
    AutoRoute(page: SubRoute.page, path: '/sub'),
    AutoRoute(page: SettingsRoute.page, path: '/settings'),
    AutoRoute(page: LicenseRoute.page, path: '/license')
  ];
}