import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with the server.');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with the server.');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with the server.');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate received from the server.');

      case DioExceptionType.badResponse:
        // Handle the case where response might be null
        return ServerFailure.fromResponse(
            dioError.response?.statusCode, dioError.response?.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to the server was canceled.');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with the server.');

      case DioExceptionType.unknown:
        return ServerFailure('An unknown error occurred. Please try again.');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == null) {
      return ServerFailure('No status code received. Please try again.');
    }

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      final message = response is Map && response.containsKey('error')
          ? response['error']['message'] ?? 'Authentication error occurred.'
          : 'Authentication error occurred.';
      return ServerFailure(message);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found. Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error. Please try later.');
    } else {
      return ServerFailure('Oops! There was an error. Please try again.');
    }
  }
}
