import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/details/content_cast_details.dart';
import 'package:flutter/material.dart';

class ListCast extends StatelessWidget {
  const ListCast({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.2, crossAxisCount: 2, crossAxisSpacing: 4),
      itemBuilder: (context, index) => ContentCastDetail(
        url: listUrlImageCast[index]["urlImageCast"],
        ten: listUrlImageCast[index]["name"],
      ),
      itemCount: listUrlImageCast.length,
    );
  }
}
