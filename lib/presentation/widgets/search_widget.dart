import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  final String textLabel;
  const SearchWidget({
    super.key,
    required this.textLabel,
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
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsetsDirectional.symmetric(vertical: 10),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
          ),
          hintText: textLabel,
          hintStyle: const TextStyle(color: Colors.white),
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xff67686D),
            size: 25,
          ),
        ),
      ),
    );
  }
}
