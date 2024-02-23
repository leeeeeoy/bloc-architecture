// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Authentication {
  String get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get tokenType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res, Authentication>;
  @useResult
  $Res call({String accessToken, String? refreshToken, String? tokenType});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res, $Val extends Authentication>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationImplCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$$AuthenticationImplCopyWith(_$AuthenticationImpl value,
          $Res Function(_$AuthenticationImpl) then) =
      __$$AuthenticationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String? refreshToken, String? tokenType});
}

/// @nodoc
class __$$AuthenticationImplCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res, _$AuthenticationImpl>
    implements _$$AuthenticationImplCopyWith<$Res> {
  __$$AuthenticationImplCopyWithImpl(
      _$AuthenticationImpl _value, $Res Function(_$AuthenticationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_$AuthenticationImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthenticationImpl implements _Authentication {
  const _$AuthenticationImpl(
      {required this.accessToken, this.refreshToken, this.tokenType});

  @override
  final String accessToken;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;

  @override
  String toString() {
    return 'Authentication(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, tokenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationImplCopyWith<_$AuthenticationImpl> get copyWith =>
      __$$AuthenticationImplCopyWithImpl<_$AuthenticationImpl>(
          this, _$identity);
}

abstract class _Authentication implements Authentication {
  const factory _Authentication(
      {required final String accessToken,
      final String? refreshToken,
      final String? tokenType}) = _$AuthenticationImpl;

  @override
  String get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationImplCopyWith<_$AuthenticationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
