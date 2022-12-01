import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/text_button_with_icon.dart';
import 'package:simple_cv/app/base_widgets/text_field.dart';
import '../../config/app_color.dart';
import 'action_button.dart';
import 'level_slider.dart';

class InputLevelForm extends StatefulWidget {
  const InputLevelForm({
    Key? key,
    required this.text,
    required this.onClickDelete,
    required this.onClickDone,
    this.level = 0,
  }) : super(key: key);

  final String text;
  final int? level;
  final VoidCallback onClickDelete;
  final VoidCallback onClickDone;

  @override
  State<InputLevelForm> createState() => _InputLevelFormState();
}

class _InputLevelFormState extends State<InputLevelForm> {
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
          InputField(
            label: 'Skill',
            text: widget.text,
          ),
          const SizedBox(height: 20),
          LevelSlider(
            title: 'Level',
            level: widget.level,
            onChange: (val) {},
          ),
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
