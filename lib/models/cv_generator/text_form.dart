class TextForm {
  const TextForm({
    required this.activityId,
    this.descriptionPara,
    this.isBold = false,
    this.isItalic = false,
    this.isUnderline = false,
    this.bulletType = 0,
    this.textAlignment = 0,
  });

  final int activityId;
  final String? descriptionPara;
  final bool isBold;
  final bool isItalic;
  final bool isUnderline;
  final int bulletType;
  final int textAlignment;

  TextForm copyWith({
    int? id,
    String? des,
    bool? bold,
    bool? italic,
    bool? underline,
    int? bullet,
    int? alignment,
  }) {
    return TextForm(
      activityId: id ?? activityId,
      descriptionPara: des ?? descriptionPara,
      isBold: bold ?? isBold,
      isItalic: italic ?? isItalic,
      isUnderline: underline ?? isUnderline,
      bulletType: bullet ?? bulletType,
      textAlignment: alignment ?? textAlignment,
    );
  }
}
