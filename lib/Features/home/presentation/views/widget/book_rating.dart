import 'package:bookly/constance.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
   final MainAxisAlignment mainAxisAlignment ;
  const BookRating({super.key ,this.mainAxisAlignment=MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment:mainAxisAlignment ,
      children:const [
      Icon(FontAwesomeIcons.solidStar,color: kamberColor ,size: 14,),
      SizedBox(width: 6.3,),
      Text('4.8',style: Styles.textStyle16,),
      SizedBox(width: 5,),
      Opacity(
        opacity: 0.7,
        child: Text('(2353)',style: Styles.textStyle14,
        )),
      ]
    );
  }
}