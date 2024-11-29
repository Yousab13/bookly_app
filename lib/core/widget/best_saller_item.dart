import 'package:bookly/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/assets.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(
            height: 180,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(Assets.netimag), fit: BoxFit.fill),
                ),
              ),
            ),
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
                  'Herry Botter and the Gloabal Fire',
                  style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99\$',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  const BookRating()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
