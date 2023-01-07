import 'package:bloc_architecture/util/logger/default_logger.dart';
import 'package:graphql/client.dart';

class GraphQLApiLogger {
  final bool isQuery;
  final String query;
  final String queryMutationName;
  final Map<String, String> defaultHeaders;

  GraphQLApiLogger({
    required this.isQuery,
    required this.query,
    required this.defaultHeaders,
  }) : queryMutationName = isQuery
            ? query.substring(query.indexOf('query') + 6, query.indexOf('{'))
            : query.substring(
                query.indexOf('mutation') + 9, query.indexOf('{'));

  Future<void> requestLog(
    Map<String, String>? headers,
    Map<String, dynamic> variables,
    String? token,
  ) async {
    final logPrefix = '[requestQuery][$queryMutationName]';
    final allHeaders = {...defaultHeaders, ...headers ?? {}};

    Log.i(
      '$logPrefix'
      '\nheaders : ${Log.toPrettyJson(allHeaders)}'
      '\nvariables : ${Log.toPrettyJson(variables)}'
      '\n${query.trimLeft()}',
    );
  }

  void responseLog<T>({
    required QueryResult<T> result,
  }) {
    final logPrefix = '[responseQuery][$queryMutationName]';

    if (result.hasException) {
      final errorLog = StringBuffer(logPrefix);
      if (result.exception?.linkException != null) {
        errorLog.write(
          '\n${result.exception?.linkException.toString() ?? ''}',
        );
      }
      final graphqlErrors = result.exception?.graphqlErrors;
      if (graphqlErrors != null) {
        for (final error in graphqlErrors) {
          errorLog.write('\nmessage : ${error.message}');
          final extensions = error.extensions;
          if (extensions != null) {
            errorLog.write(
              '\nextensions : ${Log.toPrettyJson(extensions)}',
            );
          }
          final path = error.path;
          if (path != null) {
            errorLog.write('\npath : ${path.toString()}');
          }
        }
      }

      Log.w(errorLog.toString());
    } else {
      final data = result.data;

      final successLog =
          '$logPrefix\ndata : ${data != null ? Log.toPrettyJson(data) : ""}';

      Log.i(successLog);
    }
  }
}
