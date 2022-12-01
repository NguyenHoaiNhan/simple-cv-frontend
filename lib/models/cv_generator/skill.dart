class Skill {
  const Skill({
    required this.skillId,
    this.sectionTitle,
    this.skillName,
    this.level
  });

  final int skillId;
  final String? sectionTitle;
  final String? skillName;
  final int? level;
}
