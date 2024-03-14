import 'package:flutter/material.dart';
import 'package:news_app/core/confige/page_route_name.dart';
import 'package:news_app/screens/home/page/home_view.dart';
import 'package:news_app/screens/settings/page/settings_view.dart';
import 'package:news_app/screens/splash/page/splash_view.dart';

class Routes {
  static Route <dynamic> onGenerateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(builder: (context) => const SplashView(), settings: settings);
      case PageRouteName.HomeView:
        return MaterialPageRoute(builder: (context) => const HomeView(), settings: settings);
        case PageRouteName.SettingsView:
          return MaterialPageRoute(builder: (context) => const SettingsView(), settings: settings);


      default:
          return MaterialPageRoute(builder: (context) => const SplashView(), settings: settings);


    }
  }
}