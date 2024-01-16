import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/widgets/movie_infomation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Watch list'),
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 50),
          child: Column(children: [
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
                    SvgPicture.asset(
                      "assets/images/magic-box 1.svg",
                      width: 76,
                      height: 76,
                    ),
                    const Text("There is no movie yet!",
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
          ]),
        ),
      ),
    );
  }
}
