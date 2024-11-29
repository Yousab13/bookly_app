import 'package:bookly/core/widget/best_saller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widget/feature_listview_widget.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class Homeviewwidget extends StatelessWidget {
  const Homeviewwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppBar(),
              ),
              FeatureListview(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Best Saller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSallerListView(),
        )
      ],
    );
  }
}
