import 'package:cached_network_image/cached_network_image.dart';
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
        child: CachedNetworkImage(
          imageUrl: urlImagetabber,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
