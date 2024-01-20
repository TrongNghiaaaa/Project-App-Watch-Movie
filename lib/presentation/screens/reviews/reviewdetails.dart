import 'package:flutter/material.dart';

class ReviewsDetails extends StatelessWidget {
  const ReviewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const personalreviews();
  }
}

class personalreviews extends StatelessWidget {
  const personalreviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/cast1.png"),
            ),
            Text(
              "6.3",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Iqbal Shafiq Rozaan",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 340,
              child: Text(
                "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        )
      ],
    );
  }
}
