import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';
import 'package:simple_cv/app/base_widgets/input_level_form.dart';
import 'package:simple_cv/app/base_widgets/input_text_form.dart';
import '../../config/ui_values.dart';
import '../../data/models/cv_generator/skill_model.dart';

class ItemWithAction extends StatefulWidget {
  const ItemWithAction(
      {Key? key, required this.itemName, required this.onClickDone, required this.onClickDelete, this.formType = 0, this.formValues})
      : super(key: key);

  final String itemName;
  final Function onClickDone;
  final Function onClickDelete;
  final int formType; // xác định InputTextForm hay InputLevelForm
  final dynamic formValues;

  @override
  State<ItemWithAction> createState() => _ItemWithActionState();
}

class _ItemWithActionState extends State<ItemWithAction> {
  late bool isClick;
  late String text;

  @override
  void initState() {
    super.initState();
    isClick = false;
    text = widget.itemName;
  }

  @override
  Widget build(BuildContext context) {
    if (!isClick) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.greyLight),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.itemName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            ActionButton(
              buttonIcon: const Icon(Icons.edit_sharp),
              onTap: () => setState(() {
                isClick = !isClick;
              }),
            ),
          ],
        ),
      );
    }

    return widget.formType == 0
        ? InputLevelForm(
            text: 'Level',
            level: (widget.formValues as SkillModel).level,
            onClickDelete: () {
              widget.onClickDelete();
              setState(() {
                isClick = !isClick;
              });
            },
            onClickDone: () {
              widget.onClickDone();
              setState(() {
                isClick = !isClick;
              });
            },
          )
        : InputTextForm(
            position: 'Position',
            organazation: 'Organization',
            onClickDelete: () {
              widget.onClickDelete();
              setState(() {
                isClick = !isClick;
              });
            },
            onClickDone: () {
              widget.onClickDone();
              setState(() {
                isClick = !isClick;
              });
            },
          );
  }
}
