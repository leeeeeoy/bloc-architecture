import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_usecase_param.freezed.dart';

@freezed
class SignUseCaseParam with _$SignUseCaseParam {
  const factory SignUseCaseParam({
    required String email,
    required String password,
  }) = _SignUseCaseParam;
}
