import 'package:flutter/material.dart';
import 'package:flutter_submission/theme/theme.dart';

class CardPopular extends StatelessWidget {
  final String image, title;
  final bool isFirst, isLast;
  CardPopular(
      {required this.image,
      required this.title,
      required this.isFirst,
      required this.isLast});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(
        right: isLast ? 20 : 0,
        left: isFirst ? 20 : 0,
      ),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(image),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: titleCategory.copyWith(fontWeight: FontWeight.w700),
            ),
          ))
        ],
      ),
    );
  }
}
