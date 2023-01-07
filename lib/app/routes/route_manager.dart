import 'package:flutter/material.dart';
import 'package:git_repo/presentation/home/home_screens/home_screen.dart';

import '../constants/strings_manager.dart';

class AppRoutes {
  static const String homepage = '/';


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homepage:
        return _buildRoute(HomeScreen(), settings);


      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.noRouteFound,
          ),
        ),
        body: const Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }

  static _buildRoute(Widget widget, RouteSettings settings){
    return MaterialPageRoute(builder: (context)=> widget , settings: settings );
  }
}
