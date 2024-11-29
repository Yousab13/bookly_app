import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<BookManagerState> {
  FeatureBookCubit(this.homeRepoImplementation) : super(FeatureBooktInitial());
  final HomeRepo homeRepoImplementation;
  Future<void> fetchFeaturedBook() async {
    emit(FeatureBookLoading());
    var result = await homeRepoImplementation.fetchFeaturedBook();
    result.fold((failure) {
      emit(FeatureBookFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeatureBookSuccess(books: books));
    });
  }
}
