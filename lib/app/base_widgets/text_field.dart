import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';

import '../../config/ui_values.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.label,
    this.validFieldValue,
    this.onTapMoreOption,
    this.textSize = 18,
    this.text,
  }) : super(key: key);

  final String? label;
  final Function? onTapMoreOption;
  final Function(dynamic)? validFieldValue;
  final double textSize;
  final String? text;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.onTapMoreOption != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.label ?? '',
                    style: TextStyle(
                      fontSize: widget.textSize,
                    ),
                  ),
                  ActionButton(
                    onTap: () {},
                    buttonIcon: const Icon(
                      Icons.more_vert_outlined,
                      size: 16,
                    ),
                    isLarge: false,
                    border: false,
                  ),
                ],
              )
            : Text(widget.label ?? ''),
        const SizedBox(height: 5),
        SizedBox(
          height: widget.textSize * 2.3,
          child: TextFormField(
            initialValue: widget.text,
            cursorWidth: 0.8,
            cursorColor: AppColor.deepBlueDark,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: AppColor.deepBlueDark,
              fontSize: widget.textSize,
              fontWeight: FontWeight.w100,
            ),
            decoration: InputDecoration(
              fillColor: AppColor.whiteGreyLight,
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 0.8, color: Colors.transparent),
                borderRadius: BorderRadius.circular(3),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.8, color: AppColor.blueLight),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
