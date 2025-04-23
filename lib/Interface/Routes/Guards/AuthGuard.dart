import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final box = Hive.box<LoggingModel>("Logged");
   if (box.get("value")?.isLogged == true) {
    resolver.next(true);
   } else {
    resolver.redirect(RegisterRoute());
   }
  }
}