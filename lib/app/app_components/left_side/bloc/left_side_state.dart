import 'package:equatable/equatable.dart';
import 'package:simple_cv/config/enum.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class LeftSideState extends Equatable {
  const LeftSideState({
    this.details = const PersonalDetails(),
    this.screenState = ScreenState.loading,
  });

  final PersonalDetails details;
  final ScreenState screenState;

  LeftSideState copyWith({
    PersonalDetails? details,
    ScreenState? screenState,
  }) =>
      LeftSideState(
        details: details ?? this.details,
        screenState: screenState ?? this.screenState,
      );

  @override
  List<Object?> get props => [
        details,
        screenState,
      ];
}
