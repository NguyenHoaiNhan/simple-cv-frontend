import 'package:flutter/material.dart';

class LevelSlider extends StatefulWidget {
  const LevelSlider({
    Key? key,
    required this.title,
    required this.onChange,
    this.level = 0,
  }) : super(key: key);

  final String title;
  final int? level;
  final Function(int) onChange;

  @override
  State<LevelSlider> createState() => _LevelSliderState();
}

class _LevelSliderState extends State<LevelSlider> {
  late int level;
  final levelMap = {
    0: 'Make a choice',
    1: 'Beginner',
    2: 'Moderate',
    3: 'Good',
    4: 'Very good',
    5: 'Excellent',
  };

  @override
  void initState() {
    super.initState();
    level = widget.level ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Level'),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Slider(
                min: 0,
                max: 5,
                value: level.toDouble(),
                divisions: 5,
                onChanged: (val) => setState(() {
                  widget.onChange(val.toInt());
                  level = val.toInt();
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                levelMap[level] ?? 'Unknown',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
