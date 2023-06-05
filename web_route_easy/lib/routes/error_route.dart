import 'package:web_route_easy/base_imports.dart';
import '../views/error/error_view.dart';

class ErrorRoute extends BaseRoute {
  @override
  String get path => '/not-found';

  @override
  String get name => '/not-found';

  @override
  Widget createChild(BuildContext context, GoRouterState state) {
    return const ErrorView();
  }
}
