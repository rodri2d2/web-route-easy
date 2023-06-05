import 'package:web_route_easy/base_imports.dart';
import '../views/home/home_view.dart';

class HomeRoute extends BaseRoute {
  @override
  String get path => '/';

  @override
  String get name => '/';

  @override
  Widget createChild(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
