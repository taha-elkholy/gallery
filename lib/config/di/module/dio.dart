import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gallery/core/api/end_points.dart';
import 'package:gallery/core/network/network_info.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppDioInject {
  Dio get dio {
    Dio dio = Dio();
    dio.interceptors.add(AppInterceptor());
    return dio;
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connection = await NetworkInfo().isConnected;

    debugPrint('AppInterceptor=> request path is:${options.path}');

    if (connection) {
      options.baseUrl = EndPoints.baseUrl;
      options.sendTimeout = 60 * 1000;
      options.connectTimeout = 60 * 1000;
      options.contentType = AppStrings.applicationJson;
      options.receiveTimeout = 60 * 1000;
      options.responseType = ResponseType.json;
      options.receiveDataWhenStatusError = true;
      options.followRedirects = false;
      options.validateStatus = (status) {
        return status! < 500;
      };

      options.headers.addAll(
        {
          AppStrings.accept: AppStrings.applicationJson,
        },
      );

      handler.next(options);
    } else {
      handler.reject(
        DioError(
          requestOptions: options,
          type: DioErrorType.cancel,
          response: Response(
            requestOptions: options,
            statusCode: HttpStatus.networkConnectTimeoutError,
          ),
        ),
      );
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('AppInterceptor=> Dio Error is:${err.message}');
    if (err.error is SocketException) {
      debugPrint('AppInterceptor=>  socket Exception');
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('AppInterceptor=> response code is:${response.statusCode}');
    debugPrint('AppInterceptor=> response data is:${response.data}');
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        handler.reject(DioError(
          requestOptions: response.requestOptions,
          type: DioErrorType.response,
          response: Response(
            requestOptions: response.requestOptions,
            statusCode: HttpStatus.unauthorized,
          ),
          error: AppStrings.unAuthErrorMessage,
        ));
        break;
      case HttpStatus.unprocessableEntity:
        handler.reject(
          DioError(
            requestOptions: response.requestOptions,
            type: DioErrorType.response,
            response: Response(
              requestOptions: response.requestOptions,
              statusCode: HttpStatus.unprocessableEntity,
            ),
            error: response.data['error_message'] ??
                AppStrings.unknownErrorMessage,
          ),
        );
        break;
      default:
        handler.next(response);
        break;
    }
  }
}
