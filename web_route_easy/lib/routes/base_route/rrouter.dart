import 'package:web_route_easy/base_imports.dart' show GoRouter;
import 'package:web_route_easy/main_view.dart';
import 'package:web_route_easy/routes/routes.dart';
import '../../views/error/error_view.dart';

/// The RRouter class encapsulates the routing configuration of the application using `GoRouter`.
///
/// This class defines a static instance of `GoRouter` which is used to configure all routes in the application.
class RRouter {
  /// This is the static instance of `GoRouter`.
  ///
  /// Application routes are defined as instances of classes that inherit from `BaseRoute`,
  /// E.g.: `HomeRoute`, `TestRoute`, etc.
  ///
  /// An `errorPageBuilder` is also defined which is used to handle situations
  /// where an attempt is made to navigate to a route that does not exist in the router configuration.
  static final GoRouter router = GoRouter(
    routes: [
      HomeRoute().route,
      TestRoute().route,
    ],
    errorPageBuilder: (context, state) => ErrorRoute().buildPage(
      context,
      state,
      const ErrorView(),
      // ErrorView wrapped in a MainView.
      (child) => MainView(child: child), // Notice that MainView is mandatory
    ),
  );
}
