import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lap_mart/view_model/services/splash_services/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.goToLoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: const Image(
          image: AssetImage('assets/images/splash.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
