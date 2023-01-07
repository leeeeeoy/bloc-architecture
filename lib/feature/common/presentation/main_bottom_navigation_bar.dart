import 'package:bloc_architecture/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final goRouter = GoRouter.of(context);

    if (goRouter.location.contains(AppRouteState.home.name)) {
      currentIndex = 0;
    } else if (goRouter.location.contains(AppRouteState.community.name)) {
      currentIndex = 1;
    } else if (goRouter.location.contains(AppRouteState.chat.name)) {
      currentIndex = 2;
    } else if (goRouter.location.contains(AppRouteState.profile.name)) {
      currentIndex = 3;
    }

    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.home),
          label: AppRouteState.home.name,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.group),
          label: AppRouteState.community.name,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.chat_bubble),
          label: AppRouteState.chat.name,
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.settings),
          label: AppRouteState.profile.name,
        ),
      ],
      onTap: (index) {
        final goRouter = GoRouter.of(context);

        switch (index) {
          case 0:
            goRouter.pushNamed(AppRouteState.home.name);

            break;
          case 1:
            goRouter.pushNamed(AppRouteState.community.name);

            break;
          case 2:
            goRouter.pushNamed(AppRouteState.chat.name);

            break;
          case 3:
            goRouter.pushNamed(AppRouteState.profile.name);

            break;
        }
      },
    );
  }
}
