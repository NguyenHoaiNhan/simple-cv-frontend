import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/sections/personal_detail/cubit/personal_details_state.dart';

class PersonalDetailsCubit extends Cubit<PersonalDetailsState> {
  PersonalDetailsCubit() : super(PersonalDetailsState());

  // void init() {
  //   emit(state.copyWith(

  //   );
  // }

  void changeName(String givenName) {
    emit(state.copyWith(givenName: givenName));
  }

  void change(String familyName) {
    emit(state.copyWith(familyName: familyName));
  }
}
