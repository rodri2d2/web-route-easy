import 'package:web_route_easy/resources/menu.dart';

import 'base_imports.dart';

/// This widget takes an optional child that will be displayed on the screen.
/// If no child is provided, an empty `Container` will be displayed.
class MainView extends StatelessWidget {
  final Widget? child;

  const MainView({super.key, this.child});

  MainView copyWith({required Widget child}) {
    return MainView(child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          // MENU BAR
          const Menu(),
          const Spacer(),

          // Content
          Expanded(child: child ?? Container()),
          const Spacer(),
        ],
      )),
    );
  }
}
