import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final Icon buttonIcon;
  final bool border;
  final bool isLarge;

  const ActionButton({
    Key? key,
    required this.buttonIcon,
    required this.onTap,
    this.border = true,
    this.isLarge = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isLarge ? 35 : 20,
        height: isLarge ? 35 : 20,
        padding: isLarge ? const EdgeInsets.all(2) : const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border:
              Border.all(color: border ? Colors.grey.shade800 : Colors.white),
          color: Colors.white,
        ),
        child: buttonIcon,
      ),
    );
  }
}
