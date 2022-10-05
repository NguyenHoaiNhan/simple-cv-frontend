import 'package:equatable/equatable.dart';
import 'package:simple_cv/config/enum.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class RightSideState extends Equatable {
  const RightSideState({
    this.screenState = ScreenState.loading,
    this.details = const PersonalDetails(),
  });

  final ScreenState screenState;
  final PersonalDetails details;

  RightSideState copyWith({
    ScreenState? screenState,
    PersonalDetails? details,
  }) => RightSideState(
    screenState: screenState ?? this.screenState,
    details: details ?? this.details,
  );

  @override
  List<Object?> get props => [
    screenState, 
    details,
  ];
}
