import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*.3,
        child: AspectRatio(
          aspectRatio: 2.7/4,
          child: Container(
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             image: DecorationImage(image: NetworkImage(Assets.netimag 
             ),
             fit: BoxFit.fill
            ),
            ),
          ),
        ),
      ),
    );
  }
}
