// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graphql_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GraphqlBaseResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(GraphqlNetworkError graphqlNetworkError)
        exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(GraphqlNetworkError graphqlNetworkError)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(GraphqlNetworkError graphqlNetworkError)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GraphqlSucceedResponse<T> value) succeed,
    required TResult Function(GraphqlErrorResponse<T> value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult? Function(GraphqlErrorResponse<T> value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult Function(GraphqlErrorResponse<T> value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphqlBaseResponseCopyWith<T, $Res> {
  factory $GraphqlBaseResponseCopyWith(GraphqlBaseResponse<T> value,
          $Res Function(GraphqlBaseResponse<T>) then) =
      _$GraphqlBaseResponseCopyWithImpl<T, $Res, GraphqlBaseResponse<T>>;
}

/// @nodoc
class _$GraphqlBaseResponseCopyWithImpl<T, $Res,
        $Val extends GraphqlBaseResponse<T>>
    implements $GraphqlBaseResponseCopyWith<T, $Res> {
  _$GraphqlBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GraphqlSucceedResponseCopyWith<T, $Res> {
  factory _$$GraphqlSucceedResponseCopyWith(_$GraphqlSucceedResponse<T> value,
          $Res Function(_$GraphqlSucceedResponse<T>) then) =
      __$$GraphqlSucceedResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GraphqlSucceedResponseCopyWithImpl<T, $Res>
    extends _$GraphqlBaseResponseCopyWithImpl<T, $Res,
        _$GraphqlSucceedResponse<T>>
    implements _$$GraphqlSucceedResponseCopyWith<T, $Res> {
  __$$GraphqlSucceedResponseCopyWithImpl(_$GraphqlSucceedResponse<T> _value,
      $Res Function(_$GraphqlSucceedResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GraphqlSucceedResponse<T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GraphqlSucceedResponse<T> implements GraphqlSucceedResponse<T> {
  const _$GraphqlSucceedResponse({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'GraphqlBaseResponse<$T>.succeed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphqlSucceedResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphqlSucceedResponseCopyWith<T, _$GraphqlSucceedResponse<T>>
      get copyWith => __$$GraphqlSucceedResponseCopyWithImpl<T,
          _$GraphqlSucceedResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(GraphqlNetworkError graphqlNetworkError)
        exception,
  }) {
    return succeed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(GraphqlNetworkError graphqlNetworkError)? exception,
  }) {
    return succeed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(GraphqlNetworkError graphqlNetworkError)? exception,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GraphqlSucceedResponse<T> value) succeed,
    required TResult Function(GraphqlErrorResponse<T> value) exception,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult? Function(GraphqlErrorResponse<T> value)? exception,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult Function(GraphqlErrorResponse<T> value)? exception,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class GraphqlSucceedResponse<T> implements GraphqlBaseResponse<T> {
  const factory GraphqlSucceedResponse({required final T data}) =
      _$GraphqlSucceedResponse<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$GraphqlSucceedResponseCopyWith<T, _$GraphqlSucceedResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GraphqlErrorResponseCopyWith<T, $Res> {
  factory _$$GraphqlErrorResponseCopyWith(_$GraphqlErrorResponse<T> value,
          $Res Function(_$GraphqlErrorResponse<T>) then) =
      __$$GraphqlErrorResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({GraphqlNetworkError graphqlNetworkError});

  $GraphqlNetworkErrorCopyWith<$Res> get graphqlNetworkError;
}

/// @nodoc
class __$$GraphqlErrorResponseCopyWithImpl<T, $Res>
    extends _$GraphqlBaseResponseCopyWithImpl<T, $Res,
        _$GraphqlErrorResponse<T>>
    implements _$$GraphqlErrorResponseCopyWith<T, $Res> {
  __$$GraphqlErrorResponseCopyWithImpl(_$GraphqlErrorResponse<T> _value,
      $Res Function(_$GraphqlErrorResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphqlNetworkError = null,
  }) {
    return _then(_$GraphqlErrorResponse<T>(
      graphqlNetworkError: null == graphqlNetworkError
          ? _value.graphqlNetworkError
          : graphqlNetworkError // ignore: cast_nullable_to_non_nullable
              as GraphqlNetworkError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GraphqlNetworkErrorCopyWith<$Res> get graphqlNetworkError {
    return $GraphqlNetworkErrorCopyWith<$Res>(_value.graphqlNetworkError,
        (value) {
      return _then(_value.copyWith(graphqlNetworkError: value));
    });
  }
}

/// @nodoc

class _$GraphqlErrorResponse<T> implements GraphqlErrorResponse<T> {
  const _$GraphqlErrorResponse({required this.graphqlNetworkError});

  @override
  final GraphqlNetworkError graphqlNetworkError;

  @override
  String toString() {
    return 'GraphqlBaseResponse<$T>.exception(graphqlNetworkError: $graphqlNetworkError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphqlErrorResponse<T> &&
            (identical(other.graphqlNetworkError, graphqlNetworkError) ||
                other.graphqlNetworkError == graphqlNetworkError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graphqlNetworkError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphqlErrorResponseCopyWith<T, _$GraphqlErrorResponse<T>> get copyWith =>
      __$$GraphqlErrorResponseCopyWithImpl<T, _$GraphqlErrorResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(GraphqlNetworkError graphqlNetworkError)
        exception,
  }) {
    return exception(graphqlNetworkError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(GraphqlNetworkError graphqlNetworkError)? exception,
  }) {
    return exception?.call(graphqlNetworkError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(GraphqlNetworkError graphqlNetworkError)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(graphqlNetworkError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GraphqlSucceedResponse<T> value) succeed,
    required TResult Function(GraphqlErrorResponse<T> value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult? Function(GraphqlErrorResponse<T> value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GraphqlSucceedResponse<T> value)? succeed,
    TResult Function(GraphqlErrorResponse<T> value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class GraphqlErrorResponse<T> implements GraphqlBaseResponse<T> {
  const factory GraphqlErrorResponse(
          {required final GraphqlNetworkError graphqlNetworkError}) =
      _$GraphqlErrorResponse<T>;

  GraphqlNetworkError get graphqlNetworkError;
  @JsonKey(ignore: true)
  _$$GraphqlErrorResponseCopyWith<T, _$GraphqlErrorResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
