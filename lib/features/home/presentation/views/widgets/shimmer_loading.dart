import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  final double height;
  final double width;
  const ShimmerLoading({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.black.withOpacity(.3),
        highlightColor: Colors.grey,
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
        ));
  }
}