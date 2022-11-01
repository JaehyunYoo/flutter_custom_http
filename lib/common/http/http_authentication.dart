enum AuthorizationType { bearer, basic, proxy }

class HttpAuthentication {
  HttpAuthentication._();

  static Map<String, String> bearerAuthentication(String credentials) {
    final Map<String, String> authorizationToken = {
      'Authorization': credentials.isNotEmpty ? "Bearer $credentials" : ''
    };
    return authorizationToken;
  }

  static Map<String, String> basicAuthentication(String credentials) {
    final Map<String, String> authorizationToken = {
      'Authorization': credentials.isNotEmpty ? "Basic $credentials" : ''
    };
    return authorizationToken;
  }

  static Map<String, String> proxyAuthorization(String credentials) {
    final Map<String, String> authorizationToken = {
      'Proxy-Authenticate': credentials.isNotEmpty ? "Basic $credentials" : ''
    };
    return authorizationToken;
  }

  static Map<String, String> isAuthentication(AuthorizationType type, String? credentials) {
    switch (type) {
      case AuthorizationType.basic:
        return basicAuthentication(credentials ?? '');
      case AuthorizationType.bearer:
        return bearerAuthentication(credentials ?? '');
      case AuthorizationType.proxy:
        return proxyAuthorization(credentials ?? '');
      default:
        return basicAuthentication(credentials ?? '');
    }
  }
}
