part of cv;

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
