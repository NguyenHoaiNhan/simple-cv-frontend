import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/right_side/bloc/right_side_state.dart';
import 'package:simple_cv/config/enum.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class RightSideCubit extends Cubit<RightSideState> {
  RightSideCubit() : super(const RightSideState());

  void init({
    PersonalDetails details = const PersonalDetails(),
  }) {
    emit(
      state.copyWith(
        screenState: ScreenState.successful,
        details: details,
      ),
    );
  }
}
