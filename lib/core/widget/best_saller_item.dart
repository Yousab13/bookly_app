import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class BestSallerItem extends StatelessWidget {
  final BookModel? book;
  const BestSallerItem({super.key, required this.book});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomBookImage(
              imageURL: book?.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    book?.volumeInfo.title ?? 'No title available',
                    style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  book?.volumeInfo.authors?.isNotEmpty == true ? book!.volumeInfo.authors![0] : 'No author available',
                  style: Styles.textStyle14,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    BookRating(book: book!),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}