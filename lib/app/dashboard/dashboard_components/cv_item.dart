import 'package:flutter/material.dart';
import 'package:simple_cv/data/models/cv/cv_model.dart';

class CVItem extends StatelessWidget {
  const CVItem({
    Key? key,
    required this.cvId,
    required this.createDate,
    required this.onTap,
  }) : super(key: key);

  final String cvId;
  final String createDate;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          InkWell(
            onTap: () => onTap(),
            child: Container(
              width: 110,
              height: 180,
              color: Colors.orange[300],
            ),
          ),
          Text(createDate),
        ],
      ),
    );
  }
}
