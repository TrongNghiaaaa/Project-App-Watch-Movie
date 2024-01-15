import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  "What do you want to watch?",
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(),
            Stack(
              children: [],
            )
          ]),
        ),
      ),
    );
  }
}
