import 'package:flutter/material.dart';
import 'package:simple_cv/app/cv/cv_components/left_side_components/activities_section.dart';
import 'package:simple_cv/app/cv/cv_components/left_side_components/education_section.dart';
import 'package:simple_cv/app/cv/cv_components/left_side_components/personal_details_section.dart';
import 'package:simple_cv/app/cv/cv_components/left_side_components/technical_skills_section.dart';
import 'package:simple_cv/app/cv/cv_components/left_side_components/work_experiences_section.dart';
import '../../../data/models/cv_generator/personal_info_model.dart';
import '../../../data/models/cv_generator/skill_model.dart';

class LeftSideView extends StatelessWidget {
  const LeftSideView({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final info = PersonalInfoModel(
      cvId: 1,
      address: 'Dương Minh Châu',
      avatar: 'https://pbs.twimg.com/profile_images/378800000672688190/11b83214d31bbb05e7e8e19a3ea4aa6a_400x400.jpeg',
      city: 'Tây Ninh',
      civilStatus: 'married',
      country: 'Vietnam',
      dateOfBirth: DateTime(2001, 1, 18),
      driverLicense: 'Driver123123w',
      email: 'nhan.nguyenhoai9648@gmail.com',
      familyName: 'Nguyen',
      gender: 0,
      githubLink: 'github.com/NguyenHoaiNhan',
      givenName: 'Nhan',
      headLine: 'Flutter Developer',
      linkedLink: 'linkedin.com/NguyenHoaiNhan',
      phoneNumber: '0869137138',
      placeOfBirth: 'Ben Tre',
      postCode: '84000',
    );
    final technicalSkills = [
      const SkillModel(skillId: 1, skillName: 'SQL', level: 9),
      const SkillModel(skillId: 2, skillName: 'Python', level: 2),
      const SkillModel(skillId: 3, skillName: '.Net 6', level: 4),
    ];

    return Container(
      width: width,
      height: height,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PersonalDetailsSection(info: info),
            TechnicalSkillsSection(skills: technicalSkills),
            const EducationSection(educations: [1, 2, 4, 5, 6]),
            const WorkExperiencesSections(experiences: [1, 2, 3, 4]),
            const ActivitiesSection(activities: [1, 2, 3, 5]),
          ],
        ),
      ),
    );
  }
}
