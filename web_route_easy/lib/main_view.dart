import 'base_imports.dart';

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
        child: child ?? Container(),
      ),
    );
  }
}
