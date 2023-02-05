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

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
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
            title: const Text('SignInPage'),
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const FlutterLogo(size: 48),
                  const SizedBox(height: 16),
                  TextFormField(
                    key: const Key('emailTextField'),
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    maxLength: 20,
                    decoration: InputDecoration(
                      label: const Text('Email'),
                      counterText: '',
                      suffixIcon: InkWell(
                        onTap: () => emailController.clear(),
                        child: const Icon(Icons.cancel),
                      ),
                    ),
                    validator: (value) {
                      if (value?.isNotEmpty == true) {
                        return null;
                      }

                      return '아이디를 입력해주세요';
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    key: const Key('passwordTextField'),
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    maxLength: 15,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text('Password'),
                      counterText: '',
                      suffixIcon: InkWell(
                        onTap: () => passwordController.clear(),
                        child: const Icon(Icons.cancel),
                      ),
                    ),
                    validator: (value) {
                      if (value?.isNotEmpty == true) {
                        return null;
                      }

                      return '비밀번호를 입력해주세요';
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) => state.maybeWhen(
                      loading: () => const CircularProgressIndicator.adaptive(),
                      orElse: () => ElevatedButton(
                        onPressed: () {
                          if (!formKey.currentState!.validate()) {
                            return;
                          }

                          context.read<SignInBloc>().add(
                                SignInRequested(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );
                        },
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
