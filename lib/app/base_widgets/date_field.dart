import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';

import '../../config/app_color.dart';

class DateField extends StatefulWidget {
  final String? label;
  final bool optionButton;

  const DateField({
    Key? key,
    this.label,
    this.optionButton = false,
    this.date,
  }) : super(key: key);

  final DateTime? date;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  late TextEditingController dateCtl;

  @override
  void initState() {
    super.initState();
    dateCtl = TextEditingController();
    if (widget.date != null) {
      dateCtl.text = widget.date.toString();
    }
  }

  @override
  void dispose() {
    super.dispose();
    dateCtl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.optionButton
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
        TextField(
          controller: dateCtl,
          readOnly: true,
          cursorWidth: 0.5,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            color: AppColor.deepBlueDark,
            fontSize: 18,
            fontWeight: FontWeight.w100,
          ),
          decoration: InputDecoration(
              hintText: 'dd/mm/yyyy',
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
              suffixIcon: const Icon(Icons.calendar_month)),
          onTap: () async {
            var pickedDate = await showDatePicker(
              context: (context),
              initialDate: DateTime.now(),
              firstDate: DateTime(1901, 1),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null && pickedDate.isBefore(DateTime.now())) {
              setState(() {
                dateCtl.text = DateFormat('dd/MM/yyyy').format(pickedDate);
              });
            }
          },
        ),
      ],
    );
  }
}
