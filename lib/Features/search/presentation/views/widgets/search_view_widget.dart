import 'package:bookly/Features/search/presentation/views/widgets/search_field.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/core/widget/best_saller_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewWidget extends StatelessWidget {
  const SearchViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SearchField()),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
          )),
          SliverToBoxAdapter(
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
          )),
          SliverToBoxAdapter(
            child: BestSallerListView(),
          )
        ],
      ),
    );
  }
}
