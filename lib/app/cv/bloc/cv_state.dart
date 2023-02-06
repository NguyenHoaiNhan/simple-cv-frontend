import 'package:equatable/equatable.dart';
import 'package:simple_cv/data/models/cv_generator/activity_model.dart';
import 'package:simple_cv/data/models/cv_generator/personal_info_model.dart';
import 'package:simple_cv/data/models/cv_generator/skill_model.dart';
import 'package:simple_cv/data/models/cv_generator/skill_type_model.dart';

class CVState extends Equatable {
  const CVState({
    this.personalInfo,
    this.lstActivities = const [],
    this.lstSkills = const [],
    this.lstSkillTypes = const [],
  });

  final PersonalInfoModel? personalInfo;
  final List<ActivityModel> lstActivities;
  final List<SkillModel> lstSkills;
  final List<SkillTypeModel> lstSkillTypes;

  CVState copyWith({
    PersonalInfoModel? personalInfo,
    List<ActivityModel>? lstActivities,
    List<SkillModel>? lstSkills,
    List<SkillTypeModel>? lstSkillTypes,
  }) {
    return CVState(
      personalInfo: personalInfo ?? this.personalInfo,
      lstActivities: lstActivities ?? this.lstActivities,
      lstSkillTypes: lstSkillTypes ?? this.lstSkillTypes,
      lstSkills: lstSkills ?? this.lstSkills,
    );
  }

  @override
  List<Object?> get props => [
        personalInfo,
        lstActivities,
        lstSkills,
        lstSkillTypes,
      ];
}
