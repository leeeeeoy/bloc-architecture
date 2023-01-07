import 'dart:async';

import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/sign_in_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required this.signInUseCase,
  }) : super(const SignInInitial()) {
    on<SignInRequested>(_onSignInRequested);
  }

  final SignInUseCase signInUseCase;

  FutureOr<void> _onSignInRequested(
    SignInRequested event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInLoading());

    try {
      await signInUseCase.execute(SignInUseCaseParam(
        email: event.email,
        password: event.password,
      ));

      emit(const SignInSucceed());
    } catch (e) {
      emit(const SignInError());
    }
  }
}
