import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  StatelessElement createElement() {
    Future.delayed(const Duration(seconds: 2), () {
      NavigatorUtil.pushNamedAndRemoveUntil(route: AppRoute.loginScreen);
    });
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: AppColor.redBold,),
      ),
    );
  }
}