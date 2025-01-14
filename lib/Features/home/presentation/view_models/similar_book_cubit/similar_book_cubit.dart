import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepoImplementation) : super(SimilarBookInitial());
   final HomeRepo homeRepoImplementation;
  Future<void> fetchSimilarBook({required String catagory}) async {
    emit(SimilarBookLoading());
    var result = await homeRepoImplementation.fetchNewestBook();
    result.fold((failure) {
      emit(SimilarBookFailure(errormessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBookSuccess(similarBooks: books));
    });
  }
}
