import 'dart:convert';

import 'package:app_watch_movie/api/api_url.dart';
import 'package:app_watch_movie/data/models/upcomingmovie.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UpComingMovieController extends GetxController {
  final Rx<UpComingMovieList> upcomingmovie =
      UpComingMovieList(results: []).obs;
  @override
  Future<void> onInit() async {
    upcomingmovie.value = await getUpComingMovie();
    // TODO: implement onInit
    super.onInit();
  }

  Future<UpComingMovieList> getUpComingMovie() async {
    final url = Uri.parse(ApiUrl.apiUpComingMovie);
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final results = UpComingMovieList.fromJson(data);
    return results;
  }
}
