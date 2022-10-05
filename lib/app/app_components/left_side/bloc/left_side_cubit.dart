import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/left_side/bloc/left_side_state.dart';
import 'package:simple_cv/config/enum.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class LeftSideCubit extends Cubit<LeftSideState> {
  LeftSideCubit() : super(const LeftSideState());

  void init() {
    emit(
      state.copyWith(
        screenState: ScreenState.loading,
      ),
    );

    /**
     * 
     */

    emit(
      state.copyWith(
        screenState: ScreenState.successful,
        details: const PersonalDetails(
          address: 'Thủ Đức',
          city: 'HCM',
          givenName: 'Hoài Nhân',
        ),
      ),
    );
  }

  void changeAddress(String value) {
    final details = state.details.copyWith(
      address: value,
    );

    emit(
      state.copyWith(
        details: details,
      ),
    );
  }

  void changeCity(String value) {
    final details = state.details.copyWith(
      city: value,
    );

    emit(
      state.copyWith(
        details: details,
      ),
    );
  }

  void changeGivenName(String value) {
    final details = state.details.copyWith(
      givenName: value,
    );

    emit(
      state.copyWith(
        details: details,
      ),
    );
  }
}
