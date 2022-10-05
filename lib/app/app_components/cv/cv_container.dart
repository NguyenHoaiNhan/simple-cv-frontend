import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/cv/cubit/cv_cubit.dart';
import 'package:simple_cv/app/app_components/cv/cubit/cv_state.dart';
import 'package:simple_cv/app/app_components/left_side/left_side.dart';
import 'package:simple_cv/app/app_components/right_side/right_side.dart';

class CVContainer extends StatefulWidget {
  const CVContainer({Key? key}) : super(key: key);

  @override
  State<CVContainer> createState() => _CVContainerState();
}

class _CVContainerState extends State<CVContainer> {
  late CVCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<CVCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CVCubit, CVState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade600,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: LeftSidePage(
                    data: ,
                    onChange: (section) => 
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 239, 231, 231),
                    child: const RightSidePage(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
