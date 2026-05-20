import 'package:booklyapp/Features/splashview/presentation/views/widgets/splash_view_body.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}