import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/text_button_with_icon.dart';
import 'package:simple_cv/app/base_widgets/text_editor.dart';
import 'package:simple_cv/app/base_widgets/text_field.dart';
import 'package:simple_cv/app/base_widgets/text_field_option.dart';

import '../../config/ui_values.dart';
import 'action_button.dart';

class InputTextForm extends StatefulWidget {
  const InputTextForm({
    Key? key,
    required this.onClickDelete,
    required this.onClickDone,
    required this.position,
    required this.organazation,
  }) : super(key: key);

  final String position;
  final String organazation;
  final VoidCallback onClickDelete;
  final VoidCallback onClickDone;

  @override
  State<InputTextForm> createState() => _InputTextFormState();
}

class _InputTextFormState extends State<InputTextForm> {
  var yearMap;
  var monthMap = {
    '1': 'January',
    '2': 'February',
    '3': 'March',
    '4': 'April',
    '5': 'May',
    '6': 'June',
    '7': 'July',
    '8': 'August',
    '9': 'September',
    '10': 'October',
    '11': 'November',
    '12': 'December',
  };

  @override
  void initState() {
    super.initState();
    final years = [for (var i = 1960; i <= 2023; i++) i];
    yearMap = Map.fromIterable(years,
        key: (k) => (k as String), value: (v) => v.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.greyLight),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InputField(label: widget.position),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: InputField(label: widget.organazation),
                ),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: InputField(label: 'City'),
                ),
              ),
            ],
          ),
          // const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 90,
                  width: 88,
                  child: TextFieldOption(
                    label: 'Start date',
                    options: monthMap,
                    onChange: (val) {},
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 90,
                  width: 88,
                  child: TextFieldOption(
                    options: yearMap,
                    onChange: (val) {},
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: SizedBox(
                  height: 90,
                  width: 88,
                  child: TextFieldOption(
                    label: 'End date',
                    options: monthMap,
                    onChange: (val) {},
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 90,
                  width: 88,
                  child: TextFieldOption(
                    options: yearMap,
                    onChange: (val) {},
                  ),
                ),
              ),
            ],
          ),
          const TextEditor(title: 'Description'),
          const SizedBox(height: 36),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ActionButton(
                buttonIcon: const Icon(Icons.delete),
                onTap: () => widget.onClickDelete(),
              ),
              const SizedBox(width: 8),
              TextButtonWithIcon(
                buttonName: 'Done',
                icon: Icons.done,
                isHightLight: true,
                onClick: () => widget.onClickDone(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
