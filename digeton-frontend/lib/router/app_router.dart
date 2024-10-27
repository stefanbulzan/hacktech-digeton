import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hacktech_app/features/home/presentation/home_screen.dart';
import 'package:hacktech_app/features/home/presentation/meeting_details.dart';
import 'package:hacktech_app/features/home/presentation/out_of_office.dart';
import 'package:riverpod/riverpod.dart';

export 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> _chatShellKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoute {
  welcome,
  chat,
  chatsListScreen,
  splash,
  settings,
  devices,
  login,
  voiceChat,
  signUpPassword,
  signUpDetails,
  home,
  meeting,
  outOfOffice,
}

// class AppRouter {
final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/welcome',
      errorPageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error?.toString() ?? 'error message',
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
      routes: [
        GoRoute(
          name: AppRoute.welcome.name,
          path: '/welcome',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          name: AppRoute.meeting.name,
          path: '/meeting',
          builder: (context, state) => const MeetingDetails(),
        ),
        GoRoute(
          name: AppRoute.outOfOffice.name,
          path: '/outOfOffice',
          builder: (context, state) => const OutOfOffice(),
        ),
      ],
    );
  },
);

CustomTransitionPage<dynamic> slideToLeftAnimation(Widget page) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1, 0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

extension GoRouterExtension on GoRouter {
  String nameLocation(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
  }) {
    final location = namedLocation(
      name,
      pathParameters: params,
      queryParameters: queryParams,
    );
    return location.replaceAll('?', '');
  }
}

extension GoRouterStateExtension on GoRouterState {
  String nameLocation(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
  }) {
    final location = namedLocation(
      name,
      pathParameters: params,
      queryParameters: queryParams,
    );
    return location.replaceAll('?', '');
  }
}
