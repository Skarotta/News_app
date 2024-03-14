import 'package:flutter/material.dart';
import 'package:news_app/core/confige/page_route_name.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/main.dart';
import 'package:news_app/screens/home/page/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed( const Duration(seconds: 2),
      () => navigatorkey.currentState!.pushReplacementNamed(PageRouteName.HomeView),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundWidget(
      child : Image.asset('assets/images/logo.png'),
    );
  }
}
