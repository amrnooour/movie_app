import 'package:flutter/material.dart';
import 'package:movie_app/core/funcrions/navigation.dart';
import 'package:movie_app/core/utils/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      customReplacementNavigate(context, "/home");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.splashScreen,fit: BoxFit.fill,);
  }
}
