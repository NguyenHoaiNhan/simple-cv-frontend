part of cv;

class CVContainer extends StatefulWidget {
  const CVContainer({Key? key}) : super(key: key);

  @override
  State<CVContainer> createState() => _CVContainerState();
}

class _CVContainerState extends State<CVContainer> {
  // late final Size screenSize;
  late CVCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<CVCubit>();
  }

  @override
  Widget build(BuildContext context) {
    // screenSize = CommonFunc.getScreenSize(context);

    return BlocBuilder<CVCubit, CVState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade600,
          ),
          body: Padding(
            // width: screenSize.width,
            // height: screenSize.height,
            padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: LeftSide(),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 239, 231, 231),
                    child: const RightSide(),
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
