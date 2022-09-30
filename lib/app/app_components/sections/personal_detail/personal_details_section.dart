import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/sections/personal_detail/cubit/personal_details_cubit.dart';
import 'package:simple_cv/app/app_components/sections/personal_detail/personal_details_container.dart';

class PersonalDetailsSection extends StatelessWidget {
  const PersonalDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalDetailsCubit(),
      child: const PersonalDetailsContainer(),
    );
  }
}
