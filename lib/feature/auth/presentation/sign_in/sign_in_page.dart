import 'package:bloc_architecture/feature/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:bloc_architecture/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        succeed: () => GoRouter.of(context).pushNamed(AppRouteState.home.name),
        error: () => showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('로그인 실패'),
            content: const Text('이메일 혹은 비밀번호를 확인해주세요'),
            actions: [
              CupertinoDialogAction(
                child: const Text('확인'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('LoginPage'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 24),
                const FlutterLogo(size: 48),
                const SizedBox(height: 16),
                TextField(
                  controller: emailController,
                  textInputAction: TextInputAction.done,
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    counterText: '',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  maxLength: 15,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    counterText: '',
                  ),
                ),
                const SizedBox(height: 16),
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) => state.maybeWhen(
                    loading: () => const CircularProgressIndicator.adaptive(),
                    orElse: () => ElevatedButton(
                      onPressed: () => context.read<SignInBloc>().add(
                            SignInRequested(
                              email: emailController.text,
                              password: emailController.text,
                            ),
                          ),
                      child: const Text('Login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
