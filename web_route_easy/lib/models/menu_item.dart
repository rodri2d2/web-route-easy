import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final String route;
  final Map<String, dynamic> params;

  MenuItem(
      {required this.text, required this.route, Map<String, dynamic>? params})
      : params = params ?? {};
}

class MenuItemBuilder {
  static List<MenuItem> build(BuildContext context) {
    return [
      MenuItem(text: 'Home', route: '/'),
      MenuItem(text: 'Test', route: '/test'),
    ];
  }
}
