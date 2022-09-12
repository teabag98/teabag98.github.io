abstract class NetworkService {
  Future<Map<String, dynamic>> getHttp(
    String endpoint, {
    Map<String, dynamic> params,
    Map<String, dynamic> headers,
    bool tokenRequired,
  });

  Future<Map<String, dynamic>> postHttp(
    String endpoint, {
    Map<String, dynamic> params,
    dynamic body,
    Map<String, dynamic> headers,
    bool tokenRequired,
    String transactionToken,
  });

  Future<Map<String, dynamic>> putHttp(
    String endpoint, {
    Map<String, dynamic> params,
    dynamic body,
    Map<String, dynamic> headers,
    bool tokenRequired,
    bool isPatch,
  });

  Future<Map<String, dynamic>> deleteHttp(
    String endpoint, {
    Map<String, dynamic> params,
    Map<String, dynamic> body,
    Map<String, dynamic> headers,
    bool tokenRequired,
  });
}
