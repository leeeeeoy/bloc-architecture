import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    required String accessToken,
    String? refreshToken,
    String? tokenType,
  }) = _Authentication;
}
