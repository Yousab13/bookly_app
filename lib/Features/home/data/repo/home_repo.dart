import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo {
Future<Either< Failures,List<BookModel>>> fetchNewestBook();
Future<Either< Failures,List<BookModel>>> fetchFeaturedBook();
Future<Either< Failures,List<BookModel>>>fetchSimilarBook({required String catagory});
}