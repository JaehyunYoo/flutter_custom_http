import 'package:flutter_custom_http/common/http/http_authentication.dart';
import 'package:flutter_custom_http/common/http/http_content_type.dart';

class HttpHeaders {
  HttpHeaders._();

  static Map<String, String>? headers;

  static Map<String, String>? authorizationToken;

  static Map<String, String> baseHeaders({Map<String, String>? contentType}) {
    headers = contentType ?? HttpContentType.applicationType(ApplicationType.json);
    return headers!;
  }

  static Map<String, String> generateHeaders(
      {Map<String, String>? contentType, String? token, AuthorizationType? authorizationType}) {
    headers = contentType ?? HttpContentType.applicationType(ApplicationType.json);
    if (token != null) {
      headers!.addAll(HttpAuthentication.isAuthentication(authorizationType!, token));
    }
    return headers!;
  }
}
