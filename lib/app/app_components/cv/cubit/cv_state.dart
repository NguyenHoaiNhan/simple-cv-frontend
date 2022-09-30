part of cv;

class CVState extends Equatable {
  final List<Widget> sections;
  final List<Widget> leftSidePreview;
  final List<String> languages;
  final List<String> fonts;
  final double fontSize;
  final double lineHeight;
  final String color;

  const CVState({
    this.sections = const [],
    this.leftSidePreview = const [],
    this.languages = const [],
    this.fonts = const [],
    this.fontSize = 14,
    this.lineHeight = 1.0,
    this.color = '#11111',
  });

  CVState copyWith({
    final List<Widget>? sections,
    final List<Widget>? leftSidePreview,
    final List<String>? languages,
    final List<String>? fonts,
    final double? fontSize,
    final double? lineHeight,
    final String? color,
  }) {
    return CVState(
      sections: sections ?? this.sections,
      leftSidePreview: leftSidePreview ?? this.leftSidePreview,
      languages: languages ?? this.languages,
      fonts: fonts ?? this.fonts,
      fontSize: fontSize ?? this.fontSize,
      lineHeight: lineHeight ?? this.lineHeight,
      color: color ?? this.color,
    );
  }

  @override
  List<Object?> get props => [
        sections,
        leftSidePreview,
        languages,
        fonts,
        fontSize,
        lineHeight,
        color,
      ];
}
