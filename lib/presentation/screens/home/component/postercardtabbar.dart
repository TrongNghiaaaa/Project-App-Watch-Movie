import 'package:flutter/material.dart';

class PosterCardTabBar extends StatelessWidget {
  final String urlImagetabber;
  const PosterCardTabBar({super.key, required this.urlImagetabber});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 146,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Image.asset(
          urlImagetabber,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
