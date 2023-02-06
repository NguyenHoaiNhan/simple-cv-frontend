import 'package:flutter/material.dart';
import '../../config/ui_values.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(height: 5),
        TextFormField(
          minLines: 5,
          maxLines: 10,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            fillColor: AppColor.whiteGreyLight,
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 0.8, color: Colors.transparent),
              borderRadius: BorderRadius.circular(3),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.8, color: AppColor.blueLight),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
      ],
    );
  }
}
