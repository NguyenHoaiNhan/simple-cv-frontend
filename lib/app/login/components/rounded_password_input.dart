import 'package:flutter/material.dart';
import 'package:simple_cv/app/login/components/input_container.dart';
import 'package:simple_cv/app/login/constants.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({
    Key? key,
    required this.hint,
    required this.ctl,
  }) : super(key: key);

  final String hint;
  final TextEditingController ctl;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        cursorColor: kPrimaryColor,
        obscureText: true,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
