import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';
import 'package:simple_cv/app/base_widgets/date_field.dart';
import 'package:simple_cv/app/base_widgets/photo_view.dart';
import 'package:simple_cv/app/base_widgets/text_field.dart';
import 'package:simple_cv/app/base_widgets/text_field_option.dart';
import 'package:simple_cv/config/ui_values.dart';
import 'package:simple_cv/data/models/cv_generator/personal_info_model.dart';

class PersonalDetailsSection extends StatefulWidget {
  const PersonalDetailsSection({
    Key? key,
    required this.info,
  }) : super(key: key);

  final PersonalInfoModel info;

  @override
  State<PersonalDetailsSection> createState() => _PersonalDetailsSectionState();
}

class _PersonalDetailsSectionState extends State<PersonalDetailsSection> {
  late String url;
  late bool showMore;
  late double formSpace;
  late Map<String, String> genders;
  late Map<String, String> status;

  @override
  void initState() {
    super.initState();
    showMore = false;
    formSpace = 16.0;
    genders = {'0': 'Male', '1': 'Female'};
    status = {'married': 'Married', 'divorced': 'Divorced'};
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
                "Personal Information",
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
                    buttonIcon: Icon(showMore ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded),
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
                      child: PhotoView(
                        imgUrl: widget.info.avatar ?? '',
                      ),
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
                              Expanded(
                                child: InputField(
                                  label: 'Given name',
                                  text: widget.info.givenName,
                                ),
                              ),
                              SizedBox(width: formSpace),
                              Expanded(
                                child: InputField(
                                  label: 'Family name',
                                  text: widget.info.familyName,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: formSpace * 1.6),
                          InputField(
                            label: 'Email address',
                            text: widget.info.email,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Headline',
                  text: widget.info.headLine,
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Phone number',
                  text: widget.info.phoneNumber,
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Address',
                  text: widget.info.address,
                ),
                SizedBox(height: formSpace),
                Row(
                  children: [
                    Expanded(
                      child: InputField(
                        label: 'Post code',
                        text: widget.info.postCode,
                      ),
                    ),
                    SizedBox(width: formSpace),
                    Expanded(
                      child: InputField(
                        label: 'City',
                        text: widget.info.city,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: formSpace),
                DateField(
                  label: 'Date of birth',
                  optionButton: true,
                  date: widget.info.dateOfBirth,
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Place of birth',
                  text: widget.info.placeOfBirth,
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Driver\'s license',
                  text: widget.info.driverLicense,
                ),
                SizedBox(height: formSpace),
                TextFieldOption(
                  label: 'Gender',
                  options: genders,
                  option: widget.info.gender.toString(),
                  onTapMoreOption: (val) {},
                  onChange: (val) {},
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Nationality',
                  text: widget.info.country,
                ),
                SizedBox(height: formSpace),
                TextFieldOption(
                  label: 'Civil Status',
                  options: status,
                  option: widget.info.civilStatus,
                  onChange: (val) {},
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'LinkedIn',
                  text: widget.info.linkedLink,
                ),
                SizedBox(height: formSpace),
                InputField(
                  label: 'Github',
                  text: widget.info.githubLink,
                ),
              ],
            ),
          SizedBox(height: formSpace),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColor.faddedBlueLight,
          ),
        ],
      ),
    );
  }
}
