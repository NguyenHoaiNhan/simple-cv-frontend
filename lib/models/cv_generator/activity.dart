import 'package:simple_cv/models/cv_generator/text_form.dart';

class Activity {
  const Activity({
    required this.activityId,
    required this.cvId,
    required this.sectionTitle,
    this.position,
    this.organization,
    this.city,
    this.startDate,
    this.endDate,
    required this.activityType,
    required this.description,
  });

  final int activityId;
  final int cvId;
  final String? sectionTitle;
  final String? position;
  final String? organization;
  final String? city;
  final DateTime? startDate;
  final DateTime? endDate;
  final String activityType;
  final TextForm description;

  Activity copyWith(
      {int? actId,
      int? cvId,
      String? sectionTitle,
      String? pos,
      String? organization,
      String? city,
      DateTime? startDate,
      DateTime? endDate,
      String? actType,
      TextForm? des}) {
    return Activity(
      activityId: actId ?? activityId,
      activityType: actType ?? activityType,
      cvId: cvId ?? this.cvId,
      description: des ?? description,
      sectionTitle: sectionTitle ?? this.sectionTitle,
      city: city ?? this.city,
      endDate: endDate ?? this.endDate,
      startDate: startDate ?? this.startDate,
      organization: organization ?? this.organization,
      position: pos ?? position,
    );
  }
}
