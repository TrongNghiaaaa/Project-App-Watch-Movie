import 'package:flutter/material.dart';

const secondaryColor = Color(0xff0296E5);
const primaryColor = Color(0xff242A32);
InputDecoration InputDecorate(String hintText) {
  return InputDecoration(
    contentPadding:
        const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 20),
    border: const OutlineInputBorder(
      borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide.none, // Đặt borderSide thành BorderSide.none
    ),
    hintText: hintText,
    hintStyle: const TextStyle(color: Colors.grey),
    suffixIcon: const Icon(
      Icons.search,
      color: Color(0xff67686D),
      size: 25,
    ),
  );
}

List listMovies = [
  {
    "posterImageUrl": "assets/images/spiderman.png",
    "nameMovie": 'SpiderMan',
    "category": "Action",
    "year": '2019',
    "numberOfstar": '9.5',
    "time": '139 minutes',
  },
  {
    "posterImageUrl": "assets/images/nowayhome.jpg",
    "nameMovie": 'No Way Home',
    "category": "Action",
    "year": '2023',
    "numberOfstar": '9.5',
    "time": '139 minutes',
  },
  {
    "posterImageUrl": "assets/images/s-l1200.jpg",
    "nameMovie": 'Infinity War',
    "category": "Action",
    "year": '2023',
    "numberOfstar": '9',
    "time": '100 minutes',
  },
  {
    "posterImageUrl": "assets/images/FTe6Z_MVEAArAVK.jpg",
    "nameMovie": 'Thor',
    "category": "Action",
    "year": '2023',
    "numberOfstar": '9',
    "time": '100 minutes',
  }
];
List listMovieEmpty = [];
List listPosterCard = [
  {"urlImage": "assets/images/1.png", "number": "1"},
  {"urlImage": "assets/images/2.png", "number": "2"},
  {"urlImage": "assets/images/3.png", "number": "3"},
  {"urlImage": "assets/images/4.png", "number": "4"},
  {"urlImage": "assets/images/5.png", "number": "5"},
  {"urlImage": "assets/images/6.png", "number": "6"},
  {"urlImage": "assets/images/7.png", "number": "7"},
  {"urlImage": "assets/images/8.png", "number": "8"},
  {"urlImage": "assets/images/9.png", "number": "9"},
  {"urlImage": "assets/images/10.png", "number": "10"},
  {"urlImage": "assets/images/11.png", "number": "11"},
  {"urlImage": "assets/images/12.png", "number": "12"},
];
List listUrlImageCast = [
  {"urlImageCast": "assets/images/cast1.png", "name": "Tom Holland"},
  {"urlImageCast": "assets/images/cast2.png", "name": "Zendaya"},
  {"urlImageCast": "assets/images/cast3.png", "name": "Benedict Cumberbatch"},
  {"urlImageCast": "assets/images/cast4.png", "name": "Brad Pitt"},
];
List listUrlPersonalReviewsDetails = [
  {
    "urlImageAvatar": "assets/images/cast1.png",
    "rate": "6.3",
    "name": "Brad Pitt",
    "comment":
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
  },
  {
    "urlImageAvatar": "assets/images/cast2.png",
    "rate": "6.3",
    "name": "Benedict Cumberbatch",
    "comment":
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government."
  },
  {
    "urlImageAvatar": "assets/images/cast3.png",
    "rate": "6.3",
    "name": "Zendaya",
    "comment":
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government."
  },
  {
    "urlImageAvatar": "assets/images/cast4.png",
    "rate": "6.3",
    "name": "Tom Holland",
    "comment":
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government."
  },
];
