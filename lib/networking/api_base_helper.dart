import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

import '../utils/utils.dart';
import 'api_constant.dart';
import 'api_exceptions.dart';

export 'api_constant.dart';
export 'api_exceptions.dart';
export 'api_response.dart';

class ApiBaseHelper {
  final Dio _dio = Dio();

  ApiBaseHelper({String? baseUrl}) {
    _dio.options.baseUrl = baseUrl ?? BaseUrl.baseUrl;
    _dio.options.connectTimeout = const Duration(minutes: 3);
    _dio.options.receiveTimeout = const Duration(minutes: 3);
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers[ApiParam
              .paramSelectLanguageHeader] = prefGetStringWithDefaultValue(
            prefSelectedLanguageCode,
            defaultLanguage,
          );
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          return handler.next(e);
        },
      ),
    );
    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          canShowLog: true,
          queryParameters: true,
          showProcessingTime: false,
          showCUrl: false,
          logPrint: debugPrint,
        ),
      );
    }
  }

  Future<dynamic> get(String url) async {
    dynamic responseJson;
    try {
      final response = await _dio.get(url);
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> post(String url, {dynamic body}) async {
    dynamic responseJson;
    try {
      Response response = await _dio.post(url, data: jsonEncode(body));
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> postFormData(String url, {dynamic body, onProgress}) async {
    dynamic responseJson;
    try {
      Response response = await _dio.post(
        url,
        data: FormData.fromMap(body),
        onSendProgress:
            (sent, total) =>
                onProgress != null ? onProgress(sent / total) : null,
      );
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    debugPrint('Api Put, url $url');
    dynamic responseJson;
    try {
      final response = await _dio.put(url, data: body);
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    debugPrint(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    debugPrint('Api delete, url $url');
    dynamic apiResponse;
    try {
      final response = await _dio.delete(url);
      apiResponse = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return apiResponse;
  }
}

class ApiVippsHelper {
  final Dio _dio = Dio();

  String clientId = ApiConst.clientId;
  String clientSecret = ApiConst.clientSecret;
  String subscriptionKey = ApiConst.subscriptionKey;
  String msn = ApiConst.msn;

  String systemName = 'Hare Norway AS';
  String systemVersion = '3.1.2';
  String pluginName = 'Hare-Norway';
  String pluginVersion = '4.5.6';

  ApiVippsHelper() {
    _dio.options.baseUrl = BaseUrl.vippsBaseUrl;
    _dio.options.connectTimeout = const Duration(minutes: 3);
    _dio.options.receiveTimeout = const Duration(minutes: 3);
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          Map<String, String> requestHeaders = {
            'client_id': clientId,
            'client_secret': clientSecret,
            'Ocp-Apim-Subscription-Key': subscriptionKey,
            'Merchant-Serial-Number': msn,
            'Vipps-System-Name': systemName,
            'Vipps-System-Version': systemVersion,
            'Vipps-System-Plugin-Name': pluginName,
            'Vipps-System-Plugin-Version': pluginVersion,
          };
          options.headers.addAll(requestHeaders);
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          canShowLog: true,
          queryParameters: true,
          showProcessingTime: false,
          showCUrl: false,
          logPrint: debugPrint,
        ),
      );
    }
  }

  Future<dynamic> get(String url, {Map<String, String>? headers}) async {
    dynamic responseJson;
    try {
      if (headers != null) {
        _dio.options.headers.addAll(headers);
      }
      final response = await _dio.get(url);
      responseJson = _returnResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> post(
    String url, {
    dynamic body,
    Map<String, String>? headers,
  }) async {
    dynamic responseJson;
    try {
      if (headers != null) {
        _dio.options.headers.addAll(headers);
      }
      Response response = await _dio.post(url, data: jsonEncode(body));
      responseJson = _returnResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> postFormData(
    String url, {
    dynamic body,
    onProgress,
    Map<String, String>? headers,
  }) async {
    dynamic responseJson;
    try {
      if (headers != null) {
        _dio.options.headers.addAll(headers);
      }
      Response response = await _dio.post(
        url,
        data: FormData.fromMap(body),
        onSendProgress:
            (sent, total) =>
                onProgress != null ? onProgress(sent / total) : null,
      );
      responseJson = _returnResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> put(
    String url,
    dynamic body, {
    Map<String, String>? headers,
  }) async {
    dynamic responseJson;
    try {
      if (headers != null) {
        _dio.options.headers.addAll(headers);
      }
      final response = await _dio.put(url, data: body);
      responseJson = _returnResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
    return responseJson;
  }

  Future<dynamic> delete(String url, {Map<String, String>? headers}) async {
    dynamic apiResponse;
    try {
      if (headers != null) {
        _dio.options.headers.addAll(headers);
      }
      final response = await _dio.delete(url);
      apiResponse = _returnResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
    return apiResponse;
  }
}

class ApiMapHelper {
  final Dio _dio = Dio();

  ApiMapHelper() {
    _dio.options.baseUrl = BaseUrl.mapBaseUrl;
    _dio.options.connectTimeout = const Duration(minutes: 3);
    _dio.options.receiveTimeout = const Duration(minutes: 3);
    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          canShowLog: true,
          queryParameters: true,
          showProcessingTime: false,
          showCUrl: false,
          logPrint: debugPrint,
        ),
      );
    }
  }

  Future<dynamic> get(String url) async {
    dynamic responseJson;
    try {
      final response = await _dio.get(url);
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return responseJson;
  }
}

class ApiFirebaseHelper {
  final Dio _dio = Dio();

  ApiFirebaseHelper(String auth2Token) {
    _dio.options.baseUrl = BaseUrl.firebaseBaseUrl;
    _dio.options.connectTimeout = const Duration(minutes: 3);
    _dio.options.receiveTimeout = const Duration(minutes: 3);
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $auth2Token',
    };
    _dio.options.headers.addAll(requestHeaders);
    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          canShowLog: true,
          queryParameters: true,
          showProcessingTime: false,
          showCUrl: false,
          logPrint: debugPrint,
        ),
      );
    }
  }

  Future<dynamic> postFormData(String url, {dynamic body}) async {
    dynamic responseJson;
    try {
      Response response = await _dio.post(url, data: jsonEncode(body));
      responseJson = _returnResponse(response);
    } catch (e) {
      // throw FetchDataException('No Internet connection');
      throw _handleError(e);
    }
    return responseJson;
  }
}

dynamic _returnResponse(Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
      return response.data;
    case 400:
      throw BadRequestException(response.data.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.data.toString());
    case 500:
    default:
      throw FetchDataException(
        'Error occured while Communication with Server with StatusCode : ${response.statusCode}',
      );
  }
}

String _handleError(dynamic error) {
  String errorDescription = "";
  if (error is DioException) {
    DioException dioException = error;
    switch (dioException.type) {
      case DioExceptionType.cancel:
        errorDescription = languages.apiErrorCancelMsg;
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription = languages.apiErrorConnectTimeoutMsg;
        break;
      case DioExceptionType.unknown:
        errorDescription = languages.apiErrorOtherMsg;
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = languages.apiErrorReceiveTimeoutMsg;
        break;
      case DioExceptionType.connectionError:
        errorDescription =
            "${languages.apiErrorResponseMsg}: ${dioException.response?.statusCode}";
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = languages.apiErrorSendTimeoutMsg;
        break;
      default:
        errorDescription =
            "${languages.apiErrorResponseMsg}: ${dioException.response?.statusCode}";
        break;
    }
  } else {
    errorDescription = languages.apiErrorUnexpectedErrorMsg;
  }
  return errorDescription;
}
