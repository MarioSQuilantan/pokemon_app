import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core.dart';

class DioNetworkServiceImpl implements NetworkService {
  final Dio dio;

  DioNetworkServiceImpl(this.dio);

  @override
  TaskEither<NetworkException, T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await dio.get(path, queryParameters: queryParameters);
      return response.data as T;
    }, (e, _) => _handleDioError(e));
  }

  NetworkException _handleDioError(Object e) {
    if (e is DioException) {
      return DioNetworkExceptionHelper.handle(e);
    }
    return NetworkException(message: 'Unexpected error: ${e.toString()}');
  }
}
