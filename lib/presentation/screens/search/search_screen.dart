import 'package:app_watch_movie/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
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
              SearchWidget()
            ],
          ),
        ),
      )),
    );
  }
}
