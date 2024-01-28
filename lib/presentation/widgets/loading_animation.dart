import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

showLoadingAnim(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Lottie.asset('assets/images/loadinganim.json',
                width: 80, height: 80)),
      );
    },
  );
}
