import 'dart:convert';

import 'package:app_watch_movie/api/api_url.dart';
import 'package:app_watch_movie/data/models/popular_movie.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class PopularMovieController extends GetxController {
  late Rx<MovieList> listPopularMovie = MovieList(results: []).obs;
  @override
  Future<void> onInit() async {
    listPopularMovie.value = await getPopularMovie();
    // TODO: implement onInit
    super.onInit();
  }

  static Future<MovieList> getPopularMovie() async {
    final url = Uri.parse(ApiUrl
        .apiGetPopularMovie); //chuyển doan link kiểu string sang kiểu link url
    final response =
        await http.get(url); //lấy dữ liệu từ url truyền vào biến response
    final data = jsonDecode(response
        .body); //giải mã chuỗi response.body thành dạng map truyền vô biến data
    final results = MovieList.fromJson(data);
    print(results.results[0].id);
    return results;
  }
}
