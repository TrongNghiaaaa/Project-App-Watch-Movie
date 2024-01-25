import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  final String urlreviews;
  final String rate;
  final String comment;
  final String name;
  const PersonalDetails({
    super.key,
    required this.urlreviews,
    required this.rate,
    required this.comment,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(urlreviews),
              ),
              Text(
                rate,
                style: const TextStyle(color: Colors.blue),
              )
            ],
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  comment,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
