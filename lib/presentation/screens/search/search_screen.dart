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
              // SearchWidget(),
              TopNumberMovie(
                size: 90,
                number: '1',
              )
              // Stack(
              //   children: [
              //     Image.asset("assets/images/movie-2.png"),
              //     Container(
              //       padding: EdgeInsets.zero, // Padding cho nút
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.blue),
              //         borderRadius: BorderRadius.circular(8.0), // Góc bo tròn
              //       ),
              //       child:  Text(
              //         '1',
              //         style: TextStyle(
              //           fontSize: 50,
              //           color: Colors.white,
              //           foreground: Paint()
              //             ..style = PaintingStyle.stroke
              //             ..strokeWidth = 4
              //             ..color = Colors.orangeAccent,
              //         ),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      )),
    );
  }
}
