import 'package:bookly/Features/home/presentation/views/widget/book_actions.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width * .2;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'The Juncle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle16.copyWith(
              color: kgrayColor,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActions(),
      ],
    );
  }
}
