import 'package:flutter/material.dart';
import 'package:nexlab_assignment/shared/presentation/widgets/loading_widget.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  StatelessElement createElement() {

    // Fake loading
    Future.delayed(const Duration(seconds: 2), () {
      NavigatorUtil.pushNamedAndRemoveUntil(route: AppRoute.loginScreen);
    });
    
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}


