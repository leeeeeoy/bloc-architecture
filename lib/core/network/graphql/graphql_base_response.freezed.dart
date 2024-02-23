// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graphql_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$GraphqlSucceedResponseImplCopyWith<T, $Res> {
  factory _$$GraphqlSucceedResponseImplCopyWith(
          _$GraphqlSucceedResponseImpl<T> value,
          $Res Function(_$GraphqlSucceedResponseImpl<T>) then) =
      __$$GraphqlSucceedResponseImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GraphqlSucceedResponseImplCopyWithImpl<T, $Res>
    extends _$GraphqlBaseResponseCopyWithImpl<T, $Res,
        _$GraphqlSucceedResponseImpl<T>>
    implements _$$GraphqlSucceedResponseImplCopyWith<T, $Res> {
  __$$GraphqlSucceedResponseImplCopyWithImpl(
      _$GraphqlSucceedResponseImpl<T> _value,
      $Res Function(_$GraphqlSucceedResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GraphqlSucceedResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GraphqlSucceedResponseImpl<T> implements GraphqlSucceedResponse<T> {
  const _$GraphqlSucceedResponseImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'GraphqlBaseResponse<$T>.succeed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphqlSucceedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphqlSucceedResponseImplCopyWith<T, _$GraphqlSucceedResponseImpl<T>>
      get copyWith => __$$GraphqlSucceedResponseImplCopyWithImpl<T,
          _$GraphqlSucceedResponseImpl<T>>(this, _$identity);

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
      _$GraphqlSucceedResponseImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$GraphqlSucceedResponseImplCopyWith<T, _$GraphqlSucceedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GraphqlErrorResponseImplCopyWith<T, $Res> {
  factory _$$GraphqlErrorResponseImplCopyWith(
          _$GraphqlErrorResponseImpl<T> value,
          $Res Function(_$GraphqlErrorResponseImpl<T>) then) =
      __$$GraphqlErrorResponseImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({GraphqlNetworkError graphqlNetworkError});

  $GraphqlNetworkErrorCopyWith<$Res> get graphqlNetworkError;
}

/// @nodoc
class __$$GraphqlErrorResponseImplCopyWithImpl<T, $Res>
    extends _$GraphqlBaseResponseCopyWithImpl<T, $Res,
        _$GraphqlErrorResponseImpl<T>>
    implements _$$GraphqlErrorResponseImplCopyWith<T, $Res> {
  __$$GraphqlErrorResponseImplCopyWithImpl(_$GraphqlErrorResponseImpl<T> _value,
      $Res Function(_$GraphqlErrorResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphqlNetworkError = null,
  }) {
    return _then(_$GraphqlErrorResponseImpl<T>(
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

class _$GraphqlErrorResponseImpl<T> implements GraphqlErrorResponse<T> {
  const _$GraphqlErrorResponseImpl({required this.graphqlNetworkError});

  @override
  final GraphqlNetworkError graphqlNetworkError;

  @override
  String toString() {
    return 'GraphqlBaseResponse<$T>.exception(graphqlNetworkError: $graphqlNetworkError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphqlErrorResponseImpl<T> &&
            (identical(other.graphqlNetworkError, graphqlNetworkError) ||
                other.graphqlNetworkError == graphqlNetworkError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graphqlNetworkError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphqlErrorResponseImplCopyWith<T, _$GraphqlErrorResponseImpl<T>>
      get copyWith => __$$GraphqlErrorResponseImplCopyWithImpl<T,
          _$GraphqlErrorResponseImpl<T>>(this, _$identity);

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
      _$GraphqlErrorResponseImpl<T>;

  GraphqlNetworkError get graphqlNetworkError;
  @JsonKey(ignore: true)
  _$$GraphqlErrorResponseImplCopyWith<T, _$GraphqlErrorResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
