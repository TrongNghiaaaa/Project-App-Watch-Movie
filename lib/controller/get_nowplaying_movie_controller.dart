import 'dart:convert';

import 'package:app_watch_movie/api/api_url.dart';
import 'package:app_watch_movie/data/models/nowplaying_movie.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NowPlayingController extends GetxController {
  late Rx<NowPlayingMovieList> listNowPlaying =
      NowPlayingMovieList(results: []).obs; //ytber
  // late RxInt b = 0.obs;
  @override
  Future<void> onInit() async {
    listNowPlaying.value = await getNowPlaying();
    // TODO: implement onInit
    // print('ket qua cua nowplaying ${listNowPlaying.value.results[1].title}');
    super.onInit();
    // b.value = await getB();
    // print("day a bien $b");
  }

  // static Future<int> getB() {
  //   return Future.delayed(
  //     const Duration(seconds: 10),
  //     () => 5,
  //   );
  // }

  static Future<NowPlayingMovieList> getNowPlaying() async {
    final url = Uri.parse(ApiUrl.apiGetNowPlaying);
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final results = NowPlayingMovieList.fromJson(data);
    return results;
  }
}
