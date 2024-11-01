import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spotify_clone/core/configs/assets/app_vectors.dart';
import 'dart:developer';
import '../../intro/pages/get_stated.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override 

  void initState() {
    super.initState();
    navigateToGetStarted();
  }

  Future<void> navigateToGetStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const GetStatedPage(),
      ),
    );
  }

  @override 
  Widget build(BuildContext context) {
    log('data: ${AppVectors.logo}');
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVectors.logo),
      ),
    );
  }
}
