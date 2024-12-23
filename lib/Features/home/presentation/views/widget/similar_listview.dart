import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  CustomBookImage(imageURL:Assets.netimag ,),
        itemCount: 10,
      ),
    );
  }
}
