import 'package:app_watch_movie/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/Animation - 1705290275566.json',
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const Root(), transition: Transition.upToDown);
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  )),
            )
          ],
        ),
      )),
    );
  }
}
