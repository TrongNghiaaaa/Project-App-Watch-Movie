import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/details/component/list_cast.dart';

import 'package:app_watch_movie/presentation/screens/details/content_tabbar_details.dart';
import 'package:app_watch_movie/presentation/screens/home/component/rowcontend.dart';
import 'package:app_watch_movie/presentation/screens/reviews/reviewdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreens extends StatefulWidget {
  final String urlImageDetails;

  const DetailsScreens({
    super.key,
    required this.urlImageDetails,
  });

  @override
  State<DetailsScreens> createState() => _DetailsScreensState();
}

class _DetailsScreensState extends State<DetailsScreens>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool isSelected = false;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.bookmark,
                  color: isSelected == true ? null : Colors.grey),
            ),
          )
        ],
      ),
      body: Column(children: [
        TitleCoverWidget(widget: widget),
        const SizedBox(
          height: 100,
        ),
        const DetailMovieRow(),
        TabBar(
          labelStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          indicatorSize:
              TabBarIndicatorSize.label, // Set kích thước của indicator
          labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          controller: _tabController,
          labelColor: Colors.white,
          indicatorColor: Colors.grey,
          unselectedLabelStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

          dividerHeight: 0,
          tabs: const [
            Tab(text: 'About Movie'),
            Tab(text: 'Reviews'),
            Tab(text: 'Cast'),
          ],
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: const [
              // Nội dung của Tab 1
              content_tabbar_details(),
              Flexible(child: ReviewsDetails()),
              ListCast()

              // Nội dung của Tab 2
            ],
          ),
        )
      ]),
    );
  }
}

class DetailMovieRow extends StatelessWidget {
  const DetailMovieRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RowContent(
              svgurl: "assets/images/CalendarBlank.svg", content: "2021"),
          VerticalDivider(
            thickness: 2,
            color: Colors.white,
          ),
          RowContent(svgurl: "assets/images/Clock.svg", content: "148 Minutes"),
          VerticalDivider(),
          RowContent(svgurl: "assets/images/Ticket.svg", content: "Action"),
        ],
      ),
    );
  }
}

class TitleCoverWidget extends StatelessWidget {
  const TitleCoverWidget({
    super.key,
    required this.widget,
  });

  final DetailsScreens widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14)),
          child: Image.asset(
            widget.urlImageDetails,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.27,
          ),
        ),
        Positioned(
          bottom: -60,
          left: 29,
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.urlImageDetails,
                    height: 120,
                    width: 95,
                    fit: BoxFit.cover,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text(
                        "Spiderman No Way Home",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
