import 'package:web_route_easy/base_imports.dart';
import '../views/test/test_view.dart';

class TestRoute extends BaseRoute {
  @override
  String get path => '/test';

  @override
  String get name => '/test';

  @override
  Widget createChild(BuildContext context, GoRouterState state) {
    return const TestView();
  }
}
