import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/controller/get_nowplaying_movie_controller.dart';
import 'package:app_watch_movie/controller/get_upcoming_movie_controller.dart';
import 'package:app_watch_movie/presentation/screens/home/component/postercardtabbar.dart';
import 'package:app_watch_movie/styles/Image_styles/ui_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarUpcomingMovie extends StatelessWidget {
  const TabbarUpcomingMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UpComingMovieController getUpComingController = Get.find();

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 146,
        width: 100,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3 / 5,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0),
          itemBuilder: (context, index) => SizedBox(
            height: 146,
            width: 100,
            child: PosterCardTabBar(
              urlImagetabber:
                  "${UIData.urlImageOriginal}${getUpComingController.upcomingmovie.value.results[index].posterPath}",
              // urlImagetabber: listPosterCard[index]["urlImage"],
            ),
          ),
          itemCount: getUpComingController.upcomingmovie.value.results.length,
        ),
      ),
    );
  }
}
