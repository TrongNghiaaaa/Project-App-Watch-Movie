import 'dart:convert';

import 'package:app_watch_movie/api/api_url.dart';
import 'package:app_watch_movie/data/models/search_response.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MovieController extends GetxController {
  Rx<List<MovieResult>>? listMovieSearch;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<List<MovieResult>> searchMovie({required String search}) async {
    final url = Uri.parse(ApiUrl.apiSearchMovie + search);
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final results = MovieSearch.fromJson(data);
    final kq = results.results.where((element) {
      final nameLower = element.title.toLowerCase();
      final searchLower = search.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();
    listMovieSearch?.value = kq;
    return kq;
  }
}
