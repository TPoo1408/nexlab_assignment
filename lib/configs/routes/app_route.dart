import 'package:flutter/material.dart';
import 'package:nexlab_assignment/features/home/presentation/pages/home_screen.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';
import 'package:nexlab_assignment/features/login/presentation/pages/login_screen.dart';
import 'package:nexlab_assignment/features/splash/presentation/pages/splash_screen.dart';

class AppRoute {
  static const String splashScreen = '/splashScreen';
  static const String loginScreen = '/loginScreen';
  static const String homeScreen = '/homeScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _getPageRoute(const SplashScreen());
      case loginScreen:
        return _getPageRoute(const LoginScreen());
      case homeScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final isUserModel = args?['isUserModel'] as UsersModel;
        return _getPageRoute(HomeScreen(user: isUserModel), settings: settings);

      /// Default Page
      default:
        return _getPageRoute(
          const Scaffold(
            body: Center(
              child: Text("404 Page not Found"),
            ),
          ),
        );
    }
  }

  static Route _getPageRoute(Widget page, {RouteSettings? settings}) =>
      PageRouteBuilder(
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}
