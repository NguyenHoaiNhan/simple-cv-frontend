part of cv;

class RightSide extends StatefulWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
