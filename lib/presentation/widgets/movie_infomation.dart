import 'package:app_watch_movie/presentation/screens/search/components/content_row.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MovieInfomation extends StatelessWidget {
  const MovieInfomation({
    super.key,
    required this.nameMovie,
    required this.numberOfstar,
    required this.category,
    required this.year,
    required this.time,
    required this.posterImageUrl,
  });
  final String posterImageUrl;

  final String nameMovie;
  final String numberOfstar;
  final String category;
  final String year;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: posterImageUrl.isNotEmpty
                ? CachedNetworkImage(
                    width: 95,
                    height: 120,
                    imageUrl: posterImageUrl,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.cover,
                  )
                : const SizedBox(
                    width: 95,
                    height: 120,
                    child: Placeholder(),
                  ),
            // child: Image.asset(
            //   posterImageUrl,
            //   width: 95,
            //   height: 120,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nameMovie,
                    style: const TextStyle(
                      fontSize: 16,
                    )),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Star.svg",
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(numberOfstar,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
                ContentRow(
                  content: category,
                  svgurl: 'assets/images/Ticket.svg',
                ),
                ContentRow(
                  content: year,
                  svgurl: 'assets/images/CalendarBlank.svg',
                ),
                ContentRow(
                  content: time,
                  svgurl: 'assets/images/Clock.svg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
