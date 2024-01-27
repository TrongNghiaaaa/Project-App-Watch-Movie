import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:app_watch_movie/presentation/screens/search/components/content_row.dart';
import 'package:app_watch_movie/presentation/widgets/movie_infomation.dart';
import 'package:app_watch_movie/presentation/widgets/search_widget.dart';
import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:app_watch_movie/styles/Image_styles/ui_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';

import '../../../data/models/search_response.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MovieController moviewController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Search'),
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.info),
          )
        ],
      ),
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // SearchWidget(),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff3A3F47)),
                child: TypeAheadField<MovieResult>(
                  hideWithKeyboard: false,
                  suggestionsCallback: (search) async {
                    final x =
                        await moviewController.searchMovie(search: search);
                    return x;
                  },
                  builder: (context, controller, focusNode) {
                    return Flexible(
                      child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          decoration: InputDecorate("Search")),
                    );
                  },
                  itemBuilder: (context, movie) {
                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: movie.posterPath != null
                            ? CachedNetworkImage(
                                imageUrl:
                                    UIData.urlImageOriginal + movie.posterPath!,
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
              ),
              const SizedBox(
                height: 25,
              ),
              if (listMovies.isNotEmpty)
                Flexible(
                  child: ListView.builder(
                    itemCount: listMovies.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: MovieInfomation(
                          nameMovie: listMovies[index]["nameMovie"],
                          numberOfstar: listMovies[index]["numberOfstar"],
                          category: listMovies[index]["category"],
                          year: listMovies[index]["year"],
                          time: listMovies[index]["time"],
                          posterImageUrl: listMovies[index]["posterImageUrl"]),
                    ),
                  ),
                )
              else
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/images/no-results 1.svg"),
                      const Text("we are sorry, we can not find the movie :(",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      const Text(
                          "Find your movie by Type title, categories, years, etc ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      const Spacer(),
                    ],
                  ),
                ),
            ],
          ),
        ),
      )),
    );
  }
}
