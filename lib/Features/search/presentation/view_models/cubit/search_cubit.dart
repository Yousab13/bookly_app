import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> 
{
  SearchCubit(this.searchRepoImplent) : super(SearchInitial());
  final SearchRepoImplent searchRepoImplent;
  Future<void> fetchSearchBook({required String query}) async {
    emit(SearchLoading());
    var result = await searchRepoImplent.fetchSearchBook(query: query);
    result.fold((failure) {
      emit(SearchFailure(errormessage: failure.errorMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
