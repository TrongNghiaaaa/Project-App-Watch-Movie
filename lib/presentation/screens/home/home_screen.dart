import 'package:app_watch_movie/presentation/screens/home/component/postercard.dart';
import 'package:app_watch_movie/presentation/widgets/search_widget.dart';
import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  "What do you want to watch?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchWidget(
              textLabel: 'Search',
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  child: PosterCard(
                    numberCount: listPosterCard[index]["number"],
                    urlImage: listPosterCard[index]["urlImage"],
                  ),
                ),
                itemCount: listPosterCard.length,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

List listPosterCard = [
  {"urlImage": "assets/images/1.png", "number": "1"},
  {"urlImage": "assets/images/2.png", "number": "2"},
  {"urlImage": "assets/images/3.png", "number": "3"},
  {"urlImage": "assets/images/4.png", "number": "4"},
  {"urlImage": "assets/images/5.png", "number": "5"},
  {"urlImage": "assets/images/6.png", "number": "6"},
];
