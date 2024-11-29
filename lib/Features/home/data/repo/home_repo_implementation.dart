import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/util/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplementation({required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBook() async {
    try {
      var data = await apiServices.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
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

  @override
  fetchFeaturedBook()async {
    try {
      var data = await apiServices.get(
          endpoint:
              'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> featureBooks = [];
      for (var element in data['items']) {
       featureBooks.add(BookModel.fromJson(element));
      }
      return right(featureBooks);
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
