import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/cv/cubit/cv_state.dart';
import 'package:simple_cv/app/app_components/sections/personal_detail/personal_details_section.dart';
import 'package:simple_cv/data/models/personal_details.dart';

class CVCubit extends Cubit<CVState> {
  CVCubit() : super(const CVState());

  void init({
    PersonalDetails details = const PersonalDetails(),
  }) {
    List<Widget> lst = [];

    final section = PersonalDetailsSection(
      details: details,
    );

    lst.add(section);

    emit(
      state.copyWith(
        sections: lst,
      ),
    );
  }
}
