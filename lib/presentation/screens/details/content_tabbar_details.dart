import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class content_tabbar_details extends StatelessWidget {
  const content_tabbar_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MovieController controller = Get.find();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            controller.moviedetail.value.overview,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
