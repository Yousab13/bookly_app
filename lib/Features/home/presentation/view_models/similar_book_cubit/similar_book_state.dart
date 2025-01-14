part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];

  get errorMessage => null;
}

final class SimilarBookInitial extends SimilarBookState {}
final class SimilarBookLoading extends SimilarBookState {}
final class SimilarBookSuccess extends SimilarBookState {
 final List<BookModel>similarBooks;

const  SimilarBookSuccess({required this.similarBooks});
}
final class SimilarBookFailure extends SimilarBookState {
  final String errormessage;

  const SimilarBookFailure({required this.errormessage});
}
