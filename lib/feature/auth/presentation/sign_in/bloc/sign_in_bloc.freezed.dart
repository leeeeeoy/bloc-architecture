// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

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
abstract class _$$SignInRequestedImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$SignInRequestedImplCopyWith(_$SignInRequestedImpl value,
          $Res Function(_$SignInRequestedImpl) then) =
      __$$SignInRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInRequestedImpl>
    implements _$$SignInRequestedImplCopyWith<$Res> {
  __$$SignInRequestedImplCopyWithImpl(
      _$SignInRequestedImpl _value, $Res Function(_$SignInRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequestedImpl(
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

class _$SignInRequestedImpl implements SignInRequested {
  const _$SignInRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.request(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      __$$SignInRequestedImplCopyWithImpl<_$SignInRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
  }) {
    return request(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? request,
  }) {
    return request?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements SignInEvent {
  const factory SignInRequested(
      {required final String email,
      required final String password}) = _$SignInRequestedImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? succeed,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSucceed value) succeed,
    required TResult Function(SignInError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSucceed value)? succeed,
    TResult? Function(SignInError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSucceed value)? succeed,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInInitialImplCopyWith<$Res> {
  factory _$$SignInInitialImplCopyWith(
          _$SignInInitialImpl value, $Res Function(_$SignInInitialImpl) then) =
      __$$SignInInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInInitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInInitialImpl>
    implements _$$SignInInitialImplCopyWith<$Res> {
  __$$SignInInitialImplCopyWithImpl(
      _$SignInInitialImpl _value, $Res Function(_$SignInInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInInitialImpl implements SignInInitial {
  const _$SignInInitialImpl();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? succeed,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSucceed value) succeed,
    required TResult Function(SignInError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSucceed value)? succeed,
    TResult? Function(SignInError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSucceed value)? succeed,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInInitial implements SignInState {
  const factory SignInInitial() = _$SignInInitialImpl;
}

/// @nodoc
abstract class _$$SignInLoadingImplCopyWith<$Res> {
  factory _$$SignInLoadingImplCopyWith(
          _$SignInLoadingImpl value, $Res Function(_$SignInLoadingImpl) then) =
      __$$SignInLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInLoadingImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInLoadingImpl>
    implements _$$SignInLoadingImplCopyWith<$Res> {
  __$$SignInLoadingImplCopyWithImpl(
      _$SignInLoadingImpl _value, $Res Function(_$SignInLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInLoadingImpl implements SignInLoading {
  const _$SignInLoadingImpl();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? succeed,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSucceed value) succeed,
    required TResult Function(SignInError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSucceed value)? succeed,
    TResult? Function(SignInError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSucceed value)? succeed,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignInLoading implements SignInState {
  const factory SignInLoading() = _$SignInLoadingImpl;
}

/// @nodoc
abstract class _$$SignInSucceedImplCopyWith<$Res> {
  factory _$$SignInSucceedImplCopyWith(
          _$SignInSucceedImpl value, $Res Function(_$SignInSucceedImpl) then) =
      __$$SignInSucceedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInSucceedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSucceedImpl>
    implements _$$SignInSucceedImplCopyWith<$Res> {
  __$$SignInSucceedImplCopyWithImpl(
      _$SignInSucceedImpl _value, $Res Function(_$SignInSucceedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInSucceedImpl implements SignInSucceed {
  const _$SignInSucceedImpl();

  @override
  String toString() {
    return 'SignInState.succeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInSucceedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return succeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? succeed,
    TResult? Function()? error,
  }) {
    return succeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSucceed value) succeed,
    required TResult Function(SignInError value) error,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSucceed value)? succeed,
    TResult? Function(SignInError value)? error,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSucceed value)? succeed,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class SignInSucceed implements SignInState {
  const factory SignInSucceed() = _$SignInSucceedImpl;
}

/// @nodoc
abstract class _$$SignInErrorImplCopyWith<$Res> {
  factory _$$SignInErrorImplCopyWith(
          _$SignInErrorImpl value, $Res Function(_$SignInErrorImpl) then) =
      __$$SignInErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInErrorImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInErrorImpl>
    implements _$$SignInErrorImplCopyWith<$Res> {
  __$$SignInErrorImplCopyWithImpl(
      _$SignInErrorImpl _value, $Res Function(_$SignInErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInErrorImpl implements SignInError {
  const _$SignInErrorImpl();

  @override
  String toString() {
    return 'SignInState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? succeed,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSucceed value) succeed,
    required TResult Function(SignInError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSucceed value)? succeed,
    TResult? Function(SignInError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSucceed value)? succeed,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInError implements SignInState {
  const factory SignInError() = _$SignInErrorImpl;
}
