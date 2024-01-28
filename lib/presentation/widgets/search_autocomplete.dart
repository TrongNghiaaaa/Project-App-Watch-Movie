import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:app_watch_movie/data/models/search_response.dart';
import 'package:app_watch_movie/styles/Image_styles/ui_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchAutocomplete extends StatelessWidget {
  const SearchAutocomplete({
    super.key,
    required this.moviewController,
  });

  final MovieController moviewController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff3A3F47)),
      child: TypeAheadField<MovieResult>(
        hideWithKeyboard: false,
        suggestionsCallback: (search) async {
          final x = await moviewController.searchMovie(search: search);
          return x;
        },
        builder: (context, controller, focusNode) {
          return TextField(
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecorate("Search"));
        },
        itemBuilder: (context, movie) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: movie.posterPath != null
                  ? CachedNetworkImage(
                      imageUrl: UIData.urlImageOriginal + movie.posterPath!,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator.adaptive(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
            ),
            title: Text(movie.title,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(movie.releaseDate),
          );
        },
        onSelected: (city) {
          // Navigator.of(context).push<void>(
          //   MaterialPageRoute(
          //     builder: (context) => CityPage(city: city),
          //   ),
          // );
        },
      ),
    );
  }
}
