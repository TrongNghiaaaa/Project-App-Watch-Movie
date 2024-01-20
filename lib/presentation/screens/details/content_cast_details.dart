import 'package:flutter/material.dart';

class ContentCastDetail extends StatelessWidget {
  final String ten;
  final String url;
  const ContentCastDetail({
    super.key,
    required this.ten,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
            url,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ten,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
