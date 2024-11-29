part of 'feature_book_cubit.dart';

sealed class BookManagerState extends Equatable {
  const BookManagerState();

  @override
  List<Object> get props => [];
}

final class FeatureBooktInitial extends BookManagerState {}
final class FeatureBookLoading extends BookManagerState {}
final class FeatureBookFailure extends BookManagerState {
final String errorMessage;

 const FeatureBookFailure({required this.errorMessage});
}

final class FeatureBookSuccess extends BookManagerState {
  final List<BookModel>books;
 const FeatureBookSuccess({
    required this.books
   });
}

