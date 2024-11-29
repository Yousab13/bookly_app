import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImplementation) : super(NewestBooksInitial());
   final HomeRepo homeRepoImplementation;
  Future<void> fetchNewestBook() async {
    emit(NewestBooksLoading());
    var result = await homeRepoImplementation.fetchNewestBook();
    result.fold((failure) {
      emit(NewestBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
