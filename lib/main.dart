import 'package:app_watch_movie/presentation/screens/search/search_screen.dart';
import 'package:app_watch_movie/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
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
      home: const SearchScreen(),
    );
  }
}
