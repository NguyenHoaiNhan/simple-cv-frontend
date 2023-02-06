import 'package:flutter/material.dart';
import '../../config/ui_values.dart';

class LineSpacer extends StatelessWidget {
  const LineSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: AppColor.faddedBlueLight,
    );
  }
}
