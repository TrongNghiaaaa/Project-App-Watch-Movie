import 'dart:convert';
import 'package:app_watch_movie/controller/movie_controller.dart';
import 'package:get/get.dart';
import 'package:app_watch_movie/controller/get_nowplaying_movie_controller.dart';
import 'package:app_watch_movie/controller/get_popular_movie_controller.dart';
import 'package:app_watch_movie/presentation/screens/details/details_screens.dart';
import 'package:app_watch_movie/presentation/screens/search/search_screen.dart';
import 'package:app_watch_movie/presentation/screens/splash/splash_screen.dart';
import 'package:app_watch_movie/root.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<void> getData() async {
    // Ví dụ: GET request
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products/1'));
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      print(data["title"]);
    } else {}
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
            backgroundColor: Color(0xff242A32),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true),
        iconTheme: const IconThemeData(color: Colors.white),
        primaryIconTheme: const IconThemeData(color: Colors.white),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white), // Áp dụng cho nội dung chính của ứng dụng
          bodyMedium: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xff242A32),
        // colorSchemeSeed: const Color(0xff242A32),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
