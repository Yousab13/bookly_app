import 'package:bookly/Features/home/presentation/views/widget/similar_listview.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class SimilarListSection extends StatelessWidget {
  const SimilarListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also Like',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 10,
        ),
        SimilarListView(),
      ],
    );
  }
}
