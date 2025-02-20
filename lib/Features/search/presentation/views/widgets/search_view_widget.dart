import 'package:bookly/Features/search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_field.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/core/widget/best_saller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchViewWidget extends StatelessWidget {
  const SearchViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SearchField()),
            const SliverToBoxAdapter(
              child: Text(
                'Search Result',
                style: Styles.textStyle16,
              ),
            ),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if(state is SearchLoading){
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if(state is SearchFailure){
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text('Error',
                      style: Styles.textStyle16.copyWith(color: Colors.red),
                      ),
                    ),
                  );
                }
                if(state is SearchSuccess){
                  return SliverToBoxAdapter(
                    child:  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: state.books.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/BookDetailsView',
                    extra: state.books[index]
                    );
                  },
                  child: BestSallerItem(book:state.books[index],)),
                  
            ))
                  );
                }
                return const SliverToBoxAdapter(
                child: Text("Search for a book",
                 style: Styles.textStyle16,
                ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
