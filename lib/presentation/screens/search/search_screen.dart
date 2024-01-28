import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:app_watch_movie/presentation/screens/search/components/content_row.dart';
import 'package:app_watch_movie/presentation/widgets/movie_infomation.dart';
import 'package:app_watch_movie/presentation/widgets/search_autocomplete.dart';
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
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text('Search'),
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
              SearchAutocomplete(moviewController: moviewController),
              const SizedBox(
                height: 25,
              ),
              Obx(
                () => (moviewController.listMovieSearch.value.isNotEmpty)
                    ? Flexible(
                        child: ListView.builder(
                          itemCount:
                              moviewController.listMovieSearch.value.length,
                          itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: MovieInfomation(
                                nameMovie: moviewController
                                        .listMovieSearch.value[index].title ??
                                    "",
                                numberOfstar: moviewController.listMovieSearch
                                        .value[index].voteAverage
                                        .toStringAsFixed(2) ??
                                    "",
                                category: moviewController.listMovieSearch
                                        .value[index].originalTitle ??
                                    "",
                                year: moviewController.listMovieSearch
                                        .value[index].releaseDate ??
                                    "",
                                time: moviewController.listMovieSearch
                                        .value[index].releaseDate ??
                                    "",
                                posterImageUrl: moviewController.listMovieSearch
                                            .value[index].posterPath !=
                                        null
                                    ? "${UIData.urlImageOriginal}${moviewController.listMovieSearch.value[index].posterPath}"
                                    : "",
                              )),
                        ),
                      )
                    : Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            SvgPicture.asset("assets/images/no-results 1.svg"),
                            const Text(
                                "we are sorry, we can not find the movie :(",
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
              )
            ],
          ),
        ),
      )),
    );
  }
}
