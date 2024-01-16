import 'package:flutter/material.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0,
      title: const Text('Watch list'),
      leading: const Padding(
        padding: EdgeInsets.only(left: 16),
        child: Icon(Icons.arrow_back_ios),
      ),
    ));
  }
}
