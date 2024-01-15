import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [Icon(Icons.info)],
      ),
      body: const SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}