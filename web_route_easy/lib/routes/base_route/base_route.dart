import '../../base_imports.dart';

/// This is an abstract class to define a base route for the application.
/// The individual routes of the application must inherit from this class and provide
/// implementations for the abstract methods and getters.
abstract class BaseRoute {
  /// Route path
  String get path;

  /// Route name
  String get name;

  /// Method to create the child widget to be displayed when navigating to the route.
  /// The [context] and [state] are passed as parameters to build the widget.
  Widget createChild(BuildContext context, GoRouterState state);

  /// Getter to retrieve the `GoRoute` of the route.
  /// This getter creates a `GoRoute` using the [path] and [name] of the route,
  /// and uses the `buildPage` method to build the page to be displayed.
  GoRoute get route => GoRoute(
        path: path,
        name: name,
        pageBuilder: (context, state) => buildPage(
          context,
          state,
          createChild(context, state),
          (child) => MainView(child: child),
        ),
      );

  /// Method for constructing the page to be displayed when navigating to the route.
  /// This method uses the `CustomTransitionPage` to create a custom transition to avoid "weird animation"
  /// during the forward and backward movements
  /// The child widget and a function for building the layout must be passed as parameters
  /// In case the page is an Error e.g. 404, the main view and its child must be managed again.
  CustomTransitionPage buildPage(
    BuildContext context,
    GoRouterState state,
    Widget child,
    Widget Function(Widget child) layoutBuilder,
  ) {
    return CustomTransitionPage(
      child: layoutBuilder(child),
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
