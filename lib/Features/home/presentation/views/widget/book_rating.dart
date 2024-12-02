import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final BookModel book;
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      const Icon(
        FontAwesomeIcons.solidStar,
        color: kamberColor,
        size: 14,
      ),
      const SizedBox(
        width: 6.3,
      ),
      const Text(
        "4.5",
        style: Styles.textStyle16,
      ),
      const SizedBox(
        width: 5,
      ),
      Opacity(
          opacity: 0.7,
          child: Text(
            '(${book.volumeInfo.pageCount!} )',
            style: Styles.textStyle14,
          )),
    ]);
  }
}
