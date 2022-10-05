import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/left_side/bloc/left_side_cubit.dart';
import 'package:simple_cv/app/app_components/left_side/bloc/left_side_state.dart';

class LeftSideContainer extends StatefulWidget {
  const LeftSideContainer({Key? key}) : super(key: key);

  @override
  State<LeftSideContainer> createState() => _LeftSideContainerState();
}

class _LeftSideContainerState extends State<LeftSideContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeftSideCubit, LeftSideState>(
      bloc: context.read<LeftSideCubit>(),
      builder: (context, state) => Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
