import 'package:app_watch_movie/controller/get_trending_movie_controller.dart';
import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PosterCard extends StatelessWidget {
  final String urlImage;
  final String numberCount;
  const PosterCard({
    super.key,
    required this.urlImage,
    required this.numberCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 210,
              width: 145,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: CachedNetworkImage(
                imageUrl: urlImage,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: -50,
              left: -10,
              child: TopNumberMovie(number: numberCount, size: 90))
        ],
      ),
    );
  }
}
