import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/action_button.dart';

class PhotoView extends StatefulWidget {
  final String imgUrl;
  const PhotoView({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Photo'),
            ActionButton(
              onTap: () {},
              buttonIcon: const Icon(
                Icons.more_vert_outlined,
                size: 16,
              ),
              isLarge: false,
              border: false,
            ),
          ],
        ),
        const SizedBox(height: 5),
        InkWell(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(widget.imgUrl),
          ),
          onTap: () => onTapImage(),
          onHover: (bool i) {},
        )
      ],
    );
  }

  void onTapImage() {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
