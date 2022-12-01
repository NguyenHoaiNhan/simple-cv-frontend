import 'package:flutter/material.dart';

class RightSideView extends StatelessWidget {
  const RightSideView({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.purple,
    );
  }
}
