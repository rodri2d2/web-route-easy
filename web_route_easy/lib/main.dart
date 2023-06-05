import 'package:flutter/material.dart';
import 'package:web_route_easy/routes/base_route/rrouter.dart';

void main() => runApp(const WebApp());

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      routerConfig: RRouter.router,
    );
  }
}
