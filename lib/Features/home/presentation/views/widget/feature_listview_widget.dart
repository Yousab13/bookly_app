import 'package:bookly/Features/home/presentation/view_models/feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/core/widget/error_message_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListview extends StatelessWidget {
  const FeatureListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, BookManagerState>(
        builder: (context, state) {
      if (state is FeatureBookSuccess) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (cxt, ixd) {
                return CustomBookImage(imageURL: state.books[ixd].volumeInfo.imageLinks?.thumbnail??'');
              }),
        );
      } else if (state is FeatureBookFailure) {
        return CustomErrorMessage(
          errMessage: state.errorMessage,
        );
      } else if (state is FeatureBookLoading) {
         return    const  CustomLoadingIndicator();
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
