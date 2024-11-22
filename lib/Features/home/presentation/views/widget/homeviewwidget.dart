import 'package:bookly/Features/home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';

class Homeviewwidget extends StatelessWidget {
  const Homeviewwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListview()
      ],
    );
  }
}
class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

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
