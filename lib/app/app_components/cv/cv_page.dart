import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/cv/cubit/cv_cubit.dart';
import 'package:simple_cv/app/app_components/cv/cv_container.dart';

class CVPage extends StatelessWidget {
  const CVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CVCubit(),
      child: const CVContainer(),
    );
  }
}
