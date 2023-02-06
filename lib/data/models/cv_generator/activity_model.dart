import 'text_form_model.dart';

class ActivityModel {
  const ActivityModel({
    this.activityId,
    this.cvId,
    this.sectionTitle,
    this.position,
    this.organization,
    this.city,
    this.startDate,
    this.endDate,
    this.activityType,
    this.description,
  });

  final int? activityId;
  final int? cvId;
  final String? sectionTitle;
  final String? position;
  final String? organization;
  final String? city;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? activityType;
  final TextFormModel? description;

  ActivityModel copyWith({
    int? actId,
    int? cvId,
    String? sectionTitle,
    String? pos,
    String? organization,
    String? city,
    DateTime? startDate,
    DateTime? endDate,
    String? actType,
    TextFormModel? des,
  }) {
    return ActivityModel(
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
