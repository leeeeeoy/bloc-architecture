import 'package:freezed_annotation/freezed_annotation.dart';

part 'graphql_network_error.freezed.dart';

@freezed
class GraphqlNetworkError with _$GraphqlNetworkError implements Exception {
  const factory GraphqlNetworkError.linkExcepion() = GraphqlLinkExcepion;

  const factory GraphqlNetworkError.queryUnAuthorized() =
      GraphqlQueryUnAuthorized;

  const factory GraphqlNetworkError.mutationUnAuthorized() =
      GraphqlMutationUnAuthorized;

  const factory GraphqlNetworkError.queryForbidden() = GraphqlQueryForbidden;

  const factory GraphqlNetworkError.mutationForbidden() =
      GraphqlMutationForbidden;

  const factory GraphqlNetworkError.parsingError() = GraphqlParsingError;
}
