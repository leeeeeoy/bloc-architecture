import 'package:bloc_architecture/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              GoRouter.of(context).pushNamed(AppRouteState.home.name),
          child: const Text('push to MainPage'),
        ),
      ),
    );
  }
}
