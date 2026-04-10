import 'package:dio/dio.dart';
import 'package:taske_app/core/errors/failure.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/typicode/demo/';
  Future<dynamic> getRequest(String endpoint) async {
    try {
      final response = await dio.get('$baseUrl$endpoint');
      return response.data;
    } on DioException catch (e) {
      return ServerFailure.fromdioError(e);
    }
  }

  Future<dynamic> postRequest(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await dio.post('$baseUrl$endpoint', data: data);
      return response.data;
    } on DioException catch (e) {
      return ServerFailure.fromdioError(e);
    }
  }

  Future<dynamic> putRequest(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await dio.put('$baseUrl$endpoint', data: data);
      return response.data;
    } on DioException catch (e) {
      return ServerFailure.fromdioError(e);
    }
  }

  Future<dynamic> deleteRequest(String endpoint) async {
    try {
      final response = await dio.delete('$baseUrl$endpoint');
      return response.data;
    } on DioException catch (e) {
      return ServerFailure.fromdioError(e);
    }
  }
}
