import 'package:app_watch_movie/configs/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  final String textLabel;
  const SearchWidget({
    super.key,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42,
      padding: const EdgeInsets.only(left: 30, right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff3A3F47)),
      child: TextField(
        decoration: InputDecorate("search"),
      ),
    );
  }


}
