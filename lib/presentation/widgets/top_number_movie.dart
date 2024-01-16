import 'package:flutter/material.dart';

class TopNumberMovie extends StatelessWidget {
  const TopNumberMovie({
    super.key,
    required this.number,
    required this.size,
  });
  final String number;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        number,
        style: TextStyle(
          fontSize: 90,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1
            ..color = const Color(0xff0296E5),
        ),
      ),
      Text(
        number,
        style: const TextStyle(
          fontSize: 90,
          fontWeight: FontWeight.bold,
          color: Color(0xff242A32),
        ),
      ),
    ]);
  }
}
