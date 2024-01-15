import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42,
      padding: const EdgeInsets.only(left: 30, right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff3A3F47)),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsetsDirectional.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          hintText: "SpiderMan",
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon: Icon(
            Icons.search,
            color: Color(0xff67686D),
            size: 25,
          ),
        ),
      ),
    );
  }
}
