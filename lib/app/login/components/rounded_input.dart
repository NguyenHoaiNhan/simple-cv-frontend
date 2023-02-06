import 'package:flutter/material.dart';
import 'package:simple_cv/app/login/components/input_container.dart';
import 'package:simple_cv/app/login/constants.dart';

class RoundedInput extends StatefulWidget {
  const RoundedInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.ctl,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextEditingController ctl;

  @override
  State<RoundedInput> createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        controller: widget.ctl,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(widget.icon, color: kPrimaryColor),
          hintText: widget.hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
