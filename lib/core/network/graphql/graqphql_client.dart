import 'package:bloc_architecture/core/network/graphql/graphql_base_response.dart';

enum GraphqlRequestType { query, mutate }

abstract class GraphqlClient {
  Future<GraphqlBaseResponse<T>> request<T>({
    required String query,
    required GraphqlRequestType graphqlRequestType,
    Map<String, dynamic> variables = const {},
    required T? Function(Map<String, dynamic> data) parser,
    Map<String, String> headers = const {},
  });
}
