import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const Text(
            "What do you want to watch?",
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
          ),
          Center(
            child: Container(
              width: 327,
              height: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[350]),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 101, 100, 106)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 101, 100, 106),
                        size: 25,
                      ),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
