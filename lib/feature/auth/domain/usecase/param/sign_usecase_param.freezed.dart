// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_usecase_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUseCaseParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUseCaseParamCopyWith<SignUseCaseParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUseCaseParamCopyWith<$Res> {
  factory $SignUseCaseParamCopyWith(
          SignUseCaseParam value, $Res Function(SignUseCaseParam) then) =
      _$SignUseCaseParamCopyWithImpl<$Res, SignUseCaseParam>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUseCaseParamCopyWithImpl<$Res, $Val extends SignUseCaseParam>
    implements $SignUseCaseParamCopyWith<$Res> {
  _$SignUseCaseParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUseCaseParamCopyWith<$Res>
    implements $SignUseCaseParamCopyWith<$Res> {
  factory _$$_SignUseCaseParamCopyWith(
          _$_SignUseCaseParam value, $Res Function(_$_SignUseCaseParam) then) =
      __$$_SignUseCaseParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignUseCaseParamCopyWithImpl<$Res>
    extends _$SignUseCaseParamCopyWithImpl<$Res, _$_SignUseCaseParam>
    implements _$$_SignUseCaseParamCopyWith<$Res> {
  __$$_SignUseCaseParamCopyWithImpl(
      _$_SignUseCaseParam _value, $Res Function(_$_SignUseCaseParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignUseCaseParam(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUseCaseParam implements _SignUseCaseParam {
  const _$_SignUseCaseParam({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUseCaseParam(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUseCaseParam &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUseCaseParamCopyWith<_$_SignUseCaseParam> get copyWith =>
      __$$_SignUseCaseParamCopyWithImpl<_$_SignUseCaseParam>(this, _$identity);
}

abstract class _SignUseCaseParam implements SignUseCaseParam {
  const factory _SignUseCaseParam(
      {required final String email,
      required final String password}) = _$_SignUseCaseParam;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignUseCaseParamCopyWith<_$_SignUseCaseParam> get copyWith =>
      throw _privateConstructorUsedError;
}
