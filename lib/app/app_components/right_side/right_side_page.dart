import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/right_side/bloc/right_side_cubit.dart';
import 'package:simple_cv/app/app_components/right_side/right_side_container.dart';

class RightSidePage extends StatelessWidget {
  const RightSidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RightSideCubit()..init(),
      child: const RightSideContainer(),
    );
  }
}