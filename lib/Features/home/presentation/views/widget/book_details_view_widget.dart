import 'package:bookly/Features/home/presentation/views/widget/books_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly/Features/home/presentation/views/widget/simailer_list_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewWidget extends StatelessWidget {
  const BookDetailsViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarListSection(),
                SizedBox(
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

