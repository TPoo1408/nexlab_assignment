import 'package:flutter/material.dart';
import 'package:nexlab_assignment/utils/global_keys/keys.dart';

class NavigatorUtil {
  static Future push({required Widget page}) async {
    return await navigatorKey.currentState?.push(MaterialPageRoute(builder: (_) => page));
  }

  static Future pushNamed({required String route, Object? args}) async {
    return await navigatorKey.currentState?.pushNamed(route, arguments: args);
  }

  static Future pushAndRemoveUntil({required Widget page}) async {
    return await navigatorKey.currentState
        ?.pushAndRemoveUntil(MaterialPageRoute(builder: (_) => page), (route) => false);
  }

  static Future pushNamedAndRemoveUntil({required String route, Object? args}) async {
    return await navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(route, (r) => false, arguments: args);
  }

  static pop({Object? result}) {
    navigatorKey.currentState?.pop(result);
  }

  static popToRoot({Object? result}) {
    navigatorKey.currentState?.popUntil((r) => r.isFirst);
  }
}
