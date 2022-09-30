import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pattern_formatter/date_formatter.dart';
import 'package:simple_cv/app/common_widgets/action_button.dart';

class DateField extends StatefulWidget {
  final String? label;
  final bool optionButton;

  const DateField({
    Key? key,
    this.label,
    this.optionButton = false,
  }) : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  late TextEditingController dateCtl;

  @override
  void initState() {
    super.initState();
    dateCtl = TextEditingController();
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
                    buttonIcon: const Icon(Icons.more_vert_outlined),
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
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
          decoration: InputDecoration(
              hintText: 'dd/mm/yyyy',
              fillColor: Colors.grey[1],
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.blue.shade800),
                borderRadius: BorderRadius.circular(5),
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
