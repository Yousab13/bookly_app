import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_actions.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width * .2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width),
          child:  CustomBookImage(imageURL: book.volumeInfo.imageLinks?.smallThumbnail??'',),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            book.volumeInfo.title!,
            textAlign: TextAlign.center,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
         Text(
             book.volumeInfo.authors![0],
             textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
                color: kgrayColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400),
          ),
        
     
        const SizedBox(
          height: 16,
        ),
       BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          book: book,
        ),

        const SizedBox(
          height: 30,
        ),
        const BookActions(),
      ],
    );
  }
}
