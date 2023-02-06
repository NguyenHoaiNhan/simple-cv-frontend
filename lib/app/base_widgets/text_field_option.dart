import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';

import '../../config/ui_values.dart';

class TextFieldOption extends StatefulWidget {
  final Map<String, String> options;
  final String? option;
  final Function(dynamic) onChange;
  final String? label;
  final Function(dynamic)? onTapMoreOption;

  const TextFieldOption({
    Key? key,
    required this.options,
    required this.onChange,
    this.label,
    this.onTapMoreOption,
    this.option,
  }) : super(key: key);

  @override
  State<TextFieldOption> createState() => _TextFieldOptionState();
}

class _TextFieldOptionState extends State<TextFieldOption> {
  String? option;

  @override
  Widget build(BuildContext context) {
    option = widget.option;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.onTapMoreOption != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.label ?? ''),
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
        DropdownButtonFormField(
          style: TextStyle(
            color: AppColor.deepBlueDark,
            fontSize: 18,
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
          items: widget.options.entries
              .map((entry) => DropdownMenuItem(
                    value: entry.key,
                    child: Text(entry.value),
                  ))
              .toList(),
          value: widget.option,
          onChanged: (val) {
            option = val as String;
            widget.onChange(val);
          },
        ),
      ],
    );
  }
}
