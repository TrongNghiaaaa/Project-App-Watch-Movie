import 'dart:convert';

import 'package:app_watch_movie/api/api_url.dart';
import 'package:app_watch_movie/data/models/toptrendingmovie.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TopTrendingMovieController extends GetxController {
  late Rx<TopTrendingMovieResponse> toptrendingmovie =
      TopTrendingMovieResponse(results: []).obs;
  @override
  Future<void> onInit() async {
    toptrendingmovie.value = await gettoptrendingmovie();
    // TODO: implement onInit
    super.onInit();
  }

  static Future<TopTrendingMovieResponse> gettoptrendingmovie() async {
    final url = Uri.parse(ApiUrl
        .apiGetTopTrending); //chuyển doan link kiểu string sang kiểu link url
    final response =
        await http.get(url); //lấy dữ liệu từ url truyền vào biến response
    final data = jsonDecode(response
        .body); //giải mã chuỗi response.body thành dạng map truyền vô biến data
    final results = TopTrendingMovieResponse.fromJson(data);
    print(results.results[0].id);
    return results;
  }
}
