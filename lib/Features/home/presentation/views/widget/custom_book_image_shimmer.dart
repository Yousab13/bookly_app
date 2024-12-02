import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageShimmer extends StatelessWidget {
  const CustomBookImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
