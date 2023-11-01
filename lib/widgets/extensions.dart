import 'package:flutter/material.dart';

class AppConstants {
  static final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
}

extension NavigationThroughString on String {
  Future<dynamic> pushNamed() async {
    return AppConstants.navigationKey.currentState?.pushNamed(this);
  }
}

extension ContextExtension on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  void showSnackBar(String? message, {bool isError = false}) =>
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(message ?? ''),
          ),
        );
}
