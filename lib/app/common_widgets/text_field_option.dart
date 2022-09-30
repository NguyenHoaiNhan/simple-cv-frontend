import 'package:flutter/material.dart';
import 'package:simple_cv/app/common_widgets/action_button.dart';

class TextFieldOption extends StatefulWidget {
  final List<dynamic> options;
  final Function(dynamic) onChange;
  final String? label;
  final Function(dynamic)? onTapMoreOption;
  final dynamic option;

  const TextFieldOption(
      {Key? key,
      required this.options,
      required this.onChange,
      this.label,
      this.onTapMoreOption,
      this.option})
      : super(key: key);

  @override
  State<TextFieldOption> createState() => _TextFieldOptionState();
}

class _TextFieldOptionState extends State<TextFieldOption> {
  dynamic option;

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
                    buttonIcon: const Icon(Icons.more_vert_outlined),
                    isLarge: false,
                    border: false,
                  ),
                ],
              )
            : Text(widget.label ?? ''),
        const SizedBox(height: 5),
        DropdownButtonFormField(
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
          items: widget.options
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e['name']),
                  ))
              .toList(),
          value: option,
          onChanged: (val) {
            option = val;
            widget.onChange(val);
          },
        ),
      ],
    );
  }
}
