import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/left_side/bloc/left_side_cubit.dart';
import 'package:simple_cv/app/app_components/left_side/left_side_container.dart';

class LeftSidePage extends StatelessWidget {
  const LeftSidePage({Key? key,
    required this.onChange,
    required this.data,
  }) : super(key: key);

  final Function(dynamic) onChange;
  final List data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeftSideCubit()..init(),
      child: const LeftSideContainer(),
    );
  }
}
