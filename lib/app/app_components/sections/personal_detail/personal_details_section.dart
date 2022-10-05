import 'package:flutter/material.dart';
import 'package:simple_cv/app/common_widgets/action_button.dart';
import 'package:simple_cv/app/common_widgets/date_field.dart';
import 'package:simple_cv/app/common_widgets/photo_view.dart';
import 'package:simple_cv/app/common_widgets/text_field.dart';
import 'package:simple_cv/app/common_widgets/text_field_option.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class PersonalDetailsSection extends StatefulWidget {
  const PersonalDetailsSection({
    Key? key,
    required this.details,
  }) : super(key: key);

  final PersonalDetails details;

  @override
  State<PersonalDetailsSection> createState() =>
      _PersonalDetailsSectionState();
}

class _PersonalDetailsSectionState extends State<PersonalDetailsSection> {
  late String url;
  late bool showMore;
  late double formSpace;
  late List<dynamic> genders;
  late List<dynamic> status;

  @override
  void initState() {
    super.initState();
    showMore = false;
    formSpace = 20.0;
    genders = [
      {
        'id': 0,
        'name': 'Male',
      },
      {
        'id': 1,
        'name': 'Female',
      }
    ];
    status = [
      {
        'id': 0,
        'name': 'Unmarried',
      },
      {
        'id': 1,
        'name': 'Living together',
      },
      {
        'id': 2,
        'name': 'Registered partnership',
      },
      {
        'id': 3,
        'name': 'Married',
      },
      {
        'id': 4,
        'name': 'Divorced',
      },
      {
        'id': 5,
        'name': 'Widowed',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    PersonalDetails details = widget.details;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                details.familyName,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
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
          if (showMore == true)
            Column(
              children: [
                SizedBox(height: formSpace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: PhotoView(imgUrl: details.photo),
                    ),
                    SizedBox(width: formSpace),
                    Expanded(
                      flex: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Expanded(
                                child: InputField(label: 'Given name'),
                              ),
                              SizedBox(width: formSpace),
                              const Expanded(
                                child: InputField(label: 'Family name'),
                              ),
                            ],
                          ),
                          SizedBox(height: formSpace),
                          const InputField(label: 'Email address'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: formSpace),
                const InputField(label: 'Headline'),
                SizedBox(height: formSpace),
                const InputField(label: 'Phone number'),
                SizedBox(height: formSpace),
                const InputField(label: 'Address'),
                SizedBox(height: formSpace),
                Row(
                  children: [
                    const Expanded(child: InputField(label: 'Post code')),
                    SizedBox(width: formSpace),
                    const Expanded(child: InputField(label: 'City')),
                  ],
                ),
                SizedBox(height: formSpace),
                const DateField(
                  label: 'Date of birth',
                  optionButton: true,
                ),
                SizedBox(height: formSpace),
                const InputField(label: 'Place of birth'),
                SizedBox(height: formSpace),
                const InputField(label: 'Driver\'s license'),
                SizedBox(height: formSpace),
                TextFieldOption(
                  label: 'Gender',
                  options: genders,
                  onTapMoreOption: (val) {},
                  onChange: (val) {},
                ),
                SizedBox(height: formSpace),
                TextFieldOption(
                  label: 'Nationality',
                  options: status,
                  onChange: (val) {},
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Website',
                  onTapMoreOption: () {},
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'LinkedIn',
                  onTapMoreOption: () {},
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Title',
                  onTapMoreOption: () {},
                )
              ],
            ),
          SizedBox(height: formSpace),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
