import 'package:bloc_architecture/feature/auth/presentation/login_page.dart';
import 'package:bloc_architecture/feature/chat/presentation/chat_page.dart';
import 'package:bloc_architecture/feature/community/presentation/community_page.dart';
import 'package:bloc_architecture/feature/home/presentation/home_page.dart';
import 'package:bloc_architecture/feature/user/presentation/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_route_state.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellRouteNavigatorKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
  initialLocation: '/${AppRouteState.login.path}',
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/${AppRouteState.login.path}',
      name: AppRouteState.login.name,
      pageBuilder: (context, state) => appPageBuilder(
        const LoginPage(),
      ),
    ),
    ShellRoute(
      navigatorKey: shellRouteNavigatorKey,
      pageBuilder: (context, state, child) => appPageBuilder(child),
      routes: [
        GoRoute(
          path: '/${AppRouteState.home.path}',
          name: AppRouteState.home.name,
          pageBuilder: (context, state) => appPageBuilder(
            const HomePage(),
          ),
        ),
        GoRoute(
          path: '/${AppRouteState.community.path}',
          name: AppRouteState.community.name,
          pageBuilder: (context, state) => appPageBuilder(
            const CommunityPage(),
          ),
        ),
        GoRoute(
          path: '/${AppRouteState.chat.path}',
          name: AppRouteState.chat.name,
          pageBuilder: (context, state) => appPageBuilder(
            const ChatPage(),
          ),
        ),
        GoRoute(
          path: '/${AppRouteState.profile.path}',
          name: AppRouteState.profile.name,
          pageBuilder: (context, state) => appPageBuilder(
            const ProfilePage(),
          ),
        ),
      ],
    ),
  ],
);

Page<dynamic> appPageBuilder(
  Widget child, {
  bool isNoTransition = true,
}) =>
    CustomTransitionPage(
      child: child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondAnimation, child) =>
          isNoTransition
              ? child
              : FadeTransition(opacity: animation, child: child),
    );
