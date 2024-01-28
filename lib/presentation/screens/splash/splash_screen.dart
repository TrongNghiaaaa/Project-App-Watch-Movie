import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/controller/get_nowplaying_movie_controller.dart';
import 'package:app_watch_movie/controller/get_popular_movie_controller.dart';
import 'package:app_watch_movie/controller/get_trending_movie_controller.dart';
import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:app_watch_movie/presentation/widgets/loading_animation.dart';
import 'package:app_watch_movie/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "VTNC MOVIE",
                    style: GoogleFonts.redRose(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Lottie.asset(
                'assets/images/Animation - 1705290275566.json',
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 270,
                child: GestureDetector(
                  onTap: () async {
                    Get.put(
                      NowPlayingController(),
                    );
                    Get.put(PopularMovieController());
                    Get.put(TopTrendingMovieController());
                    Get.put(MovieController());
                    showLoadingAnim(context);
                    await Future.delayed(
                      const Duration(seconds: 2),
                    );
                    Get.back();
                    Get.to(() => const Root(), transition: Transition.upToDown);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      child: const Center(
                        child: Text(
                          "Tiếp tục",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
