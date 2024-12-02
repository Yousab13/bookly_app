import 'package:bookly/Features/home/presentation/view_models/newest_book_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/best_saller_item_shimmer.dart';
import 'package:bookly/core/widget/best_saller_item.dart';
import 'package:bookly/core/widget/error_message_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(builder: (context,state){
      if( state is NewestBooksSuccess){
     return  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/BookDetailsView');
                  },
                  child: BestSallerItem(book:state.books[index],)),
                  
            ));
      }
      else if(state is NewestBooksLoading){
        return ListView.builder(
          physics:const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context ,index)=>const BestSellerItemShimmer()
        
        );
      }
      else if(state is NewestBooksFailure)
      {
        return CustomErrorMessage(errMessage: state.errorMessage);
      }
     else{
      return Container();
     }
    });
  }
}
