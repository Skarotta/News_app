import 'package:flutter/material.dart';
import 'package:news_app/core/confige/application_theme_manger.dart';
import 'package:news_app/core/confige/page_route_name.dart';
import 'package:news_app/core/confige/routes.dart';

GlobalKey<NavigatorState> navigatorkey =  GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.applicationThemeData,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: PageRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
      navigatorKey: navigatorkey,

    );
  }
}

