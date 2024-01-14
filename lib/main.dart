import 'package:app_watch_movie/presentation/screens/splash_screen/splash_screen.dart';
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
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white), // Áp dụng cho nội dung chính của ứng dụng
          bodyMedium: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xff242A32),
        // colorSchemeSeed: const Color(0xff242A32),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
