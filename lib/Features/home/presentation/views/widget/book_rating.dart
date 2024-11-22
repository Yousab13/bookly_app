import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
     const Icon(FontAwesomeIcons.solidStar,color: 
     Color(0xffffdd4f),),
     const SizedBox(width: 6.5,),
     const Text('4.8',style: Styles.textStyle16,),
    const SizedBox(width: 5,),
      Text('(2353)',style: Styles.textStyle14.copyWith(color:const Color(0xff707070)),),
      ]
    );
  }
}