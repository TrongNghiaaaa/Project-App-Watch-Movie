import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowContent extends StatelessWidget {
  final String svgurl;
  final String content;
  const RowContent({super.key, required this.svgurl, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgurl,
          height: 16,
          width: 16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(content,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ))
      ],
    );
  }
}
