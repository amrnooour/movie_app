import 'package:flutter/material.dart';
import 'package:movie_app/core/functions/navigation.dart';
import 'package:movie_app/core/utils/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      customReplacementNavigate(context, "/homeView");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        AppAssets.splash,fit: BoxFit.cover,),
    );
  }
}
