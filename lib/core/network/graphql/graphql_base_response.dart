import 'package:bloc_architecture/core/network/error/graphql_network_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graphql_base_response.freezed.dart';

@freezed
class GraphqlBaseResponse<T> with _$GraphqlBaseResponse<T> {
  const factory GraphqlBaseResponse.succeed({
    required T data,
  }) = GraphqlSucceedResponse;

  const factory GraphqlBaseResponse.exception({
    required GraphqlNetworkError graphqlNetworkError,
  }) = GraphqlErrorResponse;
}
