import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/repo/search_repo_implementation.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/util/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplent implements SearchRepo {
  final ApiServices apiServices;
  SearchRepoImplent({required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBook ({required String query}) async {
    try {
      var data = await apiServices.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=$query');
      List<BookModel> newBooks = [];
      for (var element in data['items']) {
        newBooks.add(BookModel.fromJson(element));
      }
      return right(newBooks);
    } on Exception catch (e) {
      if (e is DioException) {
         return left(ServerFailure.fromDioError(e));
      }
      else{
      return left(ServerFailure(e.toString()));
      }
    }
  }
  
}