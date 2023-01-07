import 'package:bloc_architecture/feature/common/presentation/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ProfilePage'),
      ),
    );
  }
}
