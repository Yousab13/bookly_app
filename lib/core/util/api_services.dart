import 'package:dio/dio.dart';

class ApiServices {
  final _urlLink ='https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices({required this.dio});
  Future<Map<String,dynamic>>get({required String endpoint})async{
   var respone = await dio.get('$_urlLink+$endpoint') ;
return respone.data ;
  }
  
}