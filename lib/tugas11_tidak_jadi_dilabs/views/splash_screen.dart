import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_dilabs/services/preference_handler.dart';

class SplashScreen11 extends StatefulWidget {
  const SplashScreen11({super.key});

  @override
  State<SplashScreen11> createState() => _SplashScreen11State();
}

class _SplashScreen11State extends State<SplashScreen11> {
  @override
  void initState() {
    super.initState();
    goToLogin();
  }

  void goToLogin() async {
    await Future.delayed(Duration(seconds: 2));
    if (!mounted) return;
    if (PreferenceHandler.isLogin == true) {
      context.go('home');
    } else {
      context.go('login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(child: Image.asset("assets/images/nyawit.png")),
      ),
    );
  }
}
