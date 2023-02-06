import 'package:flutter/material.dart';

import '../../config/ui_values.dart';

class TextButtonWithIcon extends StatefulWidget {
  const TextButtonWithIcon({
    Key? key,
    required this.buttonName,
    required this.icon,
    required this.onClick,
    this.isHightLight = false,
  }) : super(key: key);

  final String buttonName;
  final IconData icon;
  final VoidCallback onClick;
  final bool isHightLight;

  @override
  State<TextButtonWithIcon> createState() => _TextButtonWithIconState();
}

class _TextButtonWithIconState extends State<TextButtonWithIcon> {
  late bool isHovered;

  @override
  void initState() {
    super.initState();
    isHovered = false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      onHover: (hovered) => isHovered = !isHovered,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: widget.isHightLight
            ? BoxDecoration(
                color: AppColor.deepBlue,
                borderRadius: BorderRadius.circular(3),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: isHovered ? AppColor.blueLight : AppColor.greyLight),
                color: isHovered ? AppColor.whiteGreyLight : Colors.white,
              ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: widget.isHightLight ? Colors.white : AppColor.deepGrey,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              widget.buttonName,
              style: TextStyle(
                color: widget.isHightLight ? Colors.white : AppColor.deepGrey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
