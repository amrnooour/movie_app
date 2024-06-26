import 'package:dio/dio.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/utils/constants.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = Constants.baseUrl;
  }
  @override
  Future get(String path,
      {Object? data,
      Map<String, dynamic>? queryParameters,
      bool isFromData = false,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.get(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: headers));
      return response.data;
    } catch (e) {
      print(e.toString());
    }
  }
}
