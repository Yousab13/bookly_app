import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/books_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly/Features/home/presentation/views/widget/simailer_list_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewWidget extends StatelessWidget {
  const BookDetailsViewWidget({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
               const CustomAppBarBookDetails(),
                BookDetailsSection(book: book,),
              const  Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              const  SimilarListSection(),
              const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
