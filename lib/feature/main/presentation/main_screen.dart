import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => navigationShell.goBranch(value, initialLocation: navigationShell.currentIndex == value),
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'community'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'profile'),
        ],
      ),
    );
  }
}
