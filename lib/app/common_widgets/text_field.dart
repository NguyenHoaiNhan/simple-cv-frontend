import 'package:flutter/material.dart';
import 'package:simple_cv/app/common_widgets/action_button.dart';

class InputField extends StatefulWidget {
  final String? label;
  final Function? onTapMoreOption;
  final Function(dynamic)? validFieldValue;

  const InputField(
      {Key? key, this.label, this.validFieldValue, this.onTapMoreOption})
      : super(key: key);

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
                  Text(widget.label ?? ''),
                  ActionButton(
                    onTap: () {},
                    buttonIcon: const Icon(Icons.more_vert_outlined),
                    isLarge: false,
                    border: false,
                  ),
                ],
              )
            : Text(widget.label ?? ''),
        const SizedBox(height: 5),
        TextField(
          cursorWidth: 0.5,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
          decoration: InputDecoration(
            fillColor: Colors.grey[1],
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue.shade800),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
