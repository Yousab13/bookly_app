
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageURL;
  const CustomBookImage({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(imageUrl: imageURL ,
            fit: BoxFit.fill,
            errorWidget:(context,url,error)=>const Icon(Icons.error),
            )
            ),
          ),
      ),
    );
  }
}
