import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/home/component/personalreviews.dart';
import 'package:flutter/material.dart';

class ReviewsDetails extends StatelessWidget {
  const ReviewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      itemBuilder: (context, index) => PersonalDetails(
        urlreviews: listUrlPersonalReviewsDetails[index]["urlImageAvatar"],
        rate: listUrlPersonalReviewsDetails[index]["rate"],
        comment: listUrlPersonalReviewsDetails[index]["comment"],
        name: listUrlPersonalReviewsDetails[index]["name"],
      ),
      shrinkWrap: true,
      itemCount: listUrlPersonalReviewsDetails.length,
    );
  }
}
