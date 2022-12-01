import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class ActionButton extends StatefulWidget {
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
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  late bool isHovered;
  @override
  void initState() {
    super.initState();
    isHovered = false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (hover) {
        setState(() {
          isHovered = !isHovered;
        });
      },
      child: Container(
        width: widget.isLarge ? 35 : 20,
        height: widget.isLarge ? 35 : 20,
        padding:
            widget.isLarge ? const EdgeInsets.all(2) : const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
              color: widget.border
                  ? (isHovered ? AppColor.blueLight : AppColor.greyLight)
                  : Colors.transparent),
          color: isHovered ? AppColor.whiteGreyLight : Colors.white,
        ),
        child: widget.buttonIcon,
      ),
    );
  }
}
