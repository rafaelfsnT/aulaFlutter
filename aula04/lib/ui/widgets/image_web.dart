import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageWeb extends StatelessWidget {
  final String link;
  final double? w;
  final double? h;

  const ImageWeb({required this.link, this.h, this.w, super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      placeholder: kTransparentImage,
      image: link,
      height: h,
      width: w,
    );
  }
}
