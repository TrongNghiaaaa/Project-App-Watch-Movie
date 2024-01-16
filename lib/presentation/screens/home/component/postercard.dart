import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:flutter/material.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Image.asset(
            "assets/images/movie-1.png",
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
            bottom: -40,
            left: -10,
            child: TopNumberMovie(number: "1", size: 90))
      ],
    );
  }
}
