import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/search/components/content_row.dart';
import 'package:app_watch_movie/presentation/widgets/movie_infomation.dart';
import 'package:app_watch_movie/presentation/widgets/search_widget.dart';
import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SearchWidget(textLabel: "Search"),
              const SizedBox(
                height: 25,
              ),
              if (listMovies.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
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
