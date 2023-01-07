part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = SignInInitial;

  const factory SignInState.loading() = SignInLoading;

  const factory SignInState.succeed() = SignInSucceed;

  const factory SignInState.error() = SignInError;
}
