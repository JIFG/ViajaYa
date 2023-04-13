import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API AUTH Group Code

class ApiAuthGroup {
  static String baseUrl = 'https://11f5-177-231-136-244.ngrok-free.app/api/';
  static Map<String, String> headers = {};
  static RegistrarUsuarioCall registrarUsuarioCall = RegistrarUsuarioCall();
}

class RegistrarUsuarioCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? ine = '',
    String? driverLicence = '',
    String? cardName = '',
    String? cardID = '',
  }) {
    final body = '''
{
  "uid": "${uid}",
  "documents": {
    "ine": "${ine}",
    "driverLicence": "${driverLicence}"
  },
  "paymentMethod": {
    "cardName": "${cardName}",
    "cardNumber": "${cardID}",
    "cardExpirationDate": "url"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registrar usuario',
      apiUrl: '${ApiAuthGroup.baseUrl}/auth/register',
      callType: ApiCallType.POST,
      headers: {
        ...ApiAuthGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End API AUTH Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
