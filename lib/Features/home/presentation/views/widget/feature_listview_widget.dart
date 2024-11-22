import 'package:bookly/Features/home/presentation/views/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';

class FeatureListview extends StatelessWidget {
  const FeatureListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (cxt,ixd){
        return const CustomListViewItem();
      }),
    );
  }
}
