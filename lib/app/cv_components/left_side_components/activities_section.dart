import 'package:flutter/material.dart';
import '../../../config/app_color.dart';
import '../../base_widgets/action_button.dart';
import '../../base_widgets/item_with_action.dart';
import '../../base_widgets/line_spacer.dart';
import '../../base_widgets/text_button_with_icon.dart';

class ActivitiesSection extends StatefulWidget {
  const ActivitiesSection({Key? key, required this.activities,}) : super(key: key);

  final List<dynamic> activities;

  @override
  State<ActivitiesSection> createState() => _ActivitiesSectionState();
}

class _ActivitiesSectionState extends State<ActivitiesSection> {
  late bool showMore;
  late double formSpace;

  @override
  void initState() {
    super.initState();
    showMore = false;
    formSpace = 16.0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Activities",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: AppColor.deepBlueDark,
                ),
              ),
              Row(
                children: [
                  ActionButton(
                    buttonIcon: const Icon(Icons.more_vert_outlined),
                    onTap: () {},
                  ),
                  const SizedBox(width: 10),
                  ActionButton(
                    buttonIcon: Icon(showMore
                        ? Icons.arrow_upward_rounded
                        : Icons.arrow_downward_rounded),
                    onTap: () {
                      setState(() {
                        showMore = !showMore;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          if (showMore) _buildShowMore(),
          const SizedBox(height: 16),
          const LineSpacer(),
        ],
      ),
    );
  }

  Widget _buildShowMore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          itemBuilder: (context, index) {
            return ItemWithAction(
              itemName: 'No name',
              formType: 1,
              onClickDone: () {},
              onClickDelete: () {},
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: widget.activities.length,
          shrinkWrap: true,
        ),
        const SizedBox(height: 16),
        TextButtonWithIcon(
          buttonName: 'Add new',
          icon: Icons.add,
          onClick: () {},
        ),
      ],
    );
  }
}
