import 'package:fpdart/fpdart.dart';

import '../../core.dart';

abstract interface class NetworkService {
  TaskEither<NetworkException, T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

}
