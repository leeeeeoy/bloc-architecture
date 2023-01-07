import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_usecase_param.freezed.dart';

@freezed
class SignInUseCaseParam with _$SignInUseCaseParam {
  const factory SignInUseCaseParam({
    required String email,
    required String password,
  }) = _SignInUseCaseParam;
}
