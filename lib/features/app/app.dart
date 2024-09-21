import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/configs/styles/app_theme.dart';
import 'package:nexlab_assignment/utils/global_keys/keys.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// global keys
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,

      /// theme data
      theme: AppTheme.lightTheme,

      /// route navigation
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
