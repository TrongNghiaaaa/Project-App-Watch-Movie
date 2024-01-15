import 'package:app_watch_movie/presentation/screens/search/components/content_row.dart';
import 'package:app_watch_movie/presentation/screens/search/components/movie_infomation.dart';
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
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SearchWidget(),
              SizedBox(
                height: 15,
              ),
              MovieInfomation(
                posterImageUrl: "assets/images/spiderman.png",
                nameMovie: 'SpiderMan',
                category: "Action",
                year: '2019',
                numberOfstar: '9.5',
                time: '139 minutes',
              ),
              SizedBox(
                height: 25,
              ),
              MovieInfomation(
                posterImageUrl: "assets/images/nowayhome.jpg",
                nameMovie: 'No Way Home',
                category: "Action",
                year: '2023',
                numberOfstar: '9.5',
                time: '139 minutes',
              ),
              SizedBox(
                height: 25,
              ),
              MovieInfomation(
                posterImageUrl: "assets/images/s-l1200.jpg",
                nameMovie: 'Infinity War',
                category: "Action",
                year: '2023',
                numberOfstar: '9',
                time: '100 minutes',
              ),
              SizedBox(
                height: 25,
              ),
              MovieInfomation(
                posterImageUrl: "assets/images/FTe6Z_MVEAArAVK.jpg",
                nameMovie: 'Thor',
                category: "Action",
                year: '2023',
                numberOfstar: '9',
                time: '100 minutes',
              )
            ],
          ),
        ),
      )),
    );
  }
}
