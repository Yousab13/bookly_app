import 'package:bookly/Features/home/presentation/view_models/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/core/widget/error_message_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
           return GestureDetector(
            onTap: (){
              
            },
             child: SizedBox(
                       height: MediaQuery.sizeOf(context).width * .3,
                       child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageURL: state.similarBooks[index].volumeInfo.imageLinks!.thumbnail,
              ),
              itemCount: state.similarBooks.length,
                       ),
                     ),
           );
        }
         else if (state is SimilarBookFailure) {
        return CustomErrorMessage(
          errMessage: state.errorMessage,
        );
      } else if (state is SimilarBookLoading) {
         return const CustomLoadingIndicator();
      } else {
        return const CustomLoadingIndicator();
      }
      },
    );
  }
}
