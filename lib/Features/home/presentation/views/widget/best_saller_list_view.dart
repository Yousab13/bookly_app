

import 'package:bookly/Features/home/presentation/views/widget/best_saller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
            child: GestureDetector(
              onTap: (){
                GoRouter.of(context).push('/BookDetailsView');
              },
              child:const BestSallerItem()),
          )
      
    );
  }
}