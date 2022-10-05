import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/right_side/bloc/right_side_cubit.dart';
import 'package:simple_cv/app/app_components/right_side/bloc/right_side_state.dart';

class RightSideContainer extends StatefulWidget {
  const RightSideContainer({Key? key}) : super(key: key);

  @override
  State<RightSideContainer> createState() => _RightSideContainerState();
}

class _RightSideContainerState extends State<RightSideContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightSideCubit, RightSideState>(
      bloc: context.read<RightSideCubit>(),
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: AspectRatio(
              aspectRatio: 7 / 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.dashboard_outlined)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.font_download_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.format_line_spacing_rounded)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.color_lens_outlined)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.fullscreen))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
