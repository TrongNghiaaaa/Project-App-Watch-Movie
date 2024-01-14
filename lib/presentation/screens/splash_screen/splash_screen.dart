import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
            const Text("abnc"),
            SvgPicture.asset(
              "assets/images/Frame.svg",
              height: 100,
              width: 100,
            ),
            SvgPicture.asset(
              "assets/images/Star.svg",
              height: 100,
              width: 100,
            )
          ],
        ),
      )),
    );
  }
}
