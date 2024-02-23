import 'package:bloc_architecture/feature/auth/presentation/sign_in/sign_in_page.dart';
import 'package:bloc_architecture/feature/chat/presentation/chat_page.dart';
import 'package:bloc_architecture/feature/community/presentation/community_page.dart';
import 'package:bloc_architecture/feature/home/presentation/home_page.dart';
import 'package:bloc_architecture/feature/main/presentation/main_screen.dart';
import 'package:bloc_architecture/feature/user/presentation/profile_page.dart';
import 'package:bloc_architecture/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

GoRouter generateMockRouter({String? initialLocation}) => GoRouter(
      initialLocation: initialLocation ?? '/${AppRouteState.login.path}',
      routes: [
        GoRoute(
          path: '/${AppRouteState.login.path}',
          name: AppRouteState.login.name,
          builder: (context, state) => const SignInPage(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => MainScreen(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/${AppRouteState.home.path}',
                  name: AppRouteState.home.name,
                  builder: (context, state) => const HomePage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/${AppRouteState.community.path}',
                  name: AppRouteState.community.name,
                  builder: (context, state) => const CommunityPage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/${AppRouteState.chat.path}',
                  name: AppRouteState.chat.name,
                  builder: (context, state) => const ChatPage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/${AppRouteState.profile.path}',
                  name: AppRouteState.profile.name,
                  builder: (context, state) => const ProfilePage(),
                ),
              ],
            ),
          ],
        )
      ],
    );
