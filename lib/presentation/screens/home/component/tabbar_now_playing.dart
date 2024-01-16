import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/home/component/postercardtabbar.dart';
import 'package:flutter/material.dart';

class TabBarNowPlaying extends StatelessWidget {
  const TabBarNowPlaying({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              urlImagetabber: listPosterCard[index]["urlImage"],
            ),
          ),
          itemCount: listPosterCard.length,
        ),
      ),
    );
  }
}
