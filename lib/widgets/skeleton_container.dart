import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonContainer extends StatelessWidget {
  final double? width;
  final double? height;

  SkeletonContainer(
      {this.width = double.infinity, this.height = double.infinity});

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
        child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Colors.grey),
    ));
  }
}
