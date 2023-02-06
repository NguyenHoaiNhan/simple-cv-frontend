import 'package:flutter/material.dart';

enum DialogType { warning, success, fail, error, loading }

class CommonFuncs {
  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static void showNoti(
    BuildContext context, {
    required String content,
    DialogType type = DialogType.warning,
    Size dialogSize = const Size(160.0, 85.0),
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: dialogSize.width,
          height: dialogSize.height,
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text(content),
        );
      },
    );
  }
}
