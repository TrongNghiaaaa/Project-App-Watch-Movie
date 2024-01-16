import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/home/component/postercard.dart';
import 'package:app_watch_movie/presentation/screens/home/component/postercardtabbar.dart';
import 'package:app_watch_movie/presentation/screens/home/component/tabbar_now_playing.dart';
import 'package:app_watch_movie/presentation/widgets/search_widget.dart';
import 'package:app_watch_movie/presentation/widgets/top_number_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  "What do you want to watch?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchWidget(
              textLabel: 'Search',
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  child: PosterCard(
                    numberCount: listPosterCard[index]["number"],
                    urlImage: listPosterCard[index]["urlImage"],
                  ),
                ),
                itemCount: listPosterCard.length,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TabBar(
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              indicatorSize:
                  TabBarIndicatorSize.label, // Set kích thước của indicator
              labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              controller: _tabController,
              labelColor: Colors.white,
              indicatorColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),

              dividerHeight: 0,
              tabs: const [
                Tab(text: 'Now playing'),
                Tab(text: 'Upcoming'),
                Tab(text: 'Top rated'),
                Tab(text: 'Popular'),
              ],
            ),
            Flexible(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // Nội dung của Tab 1
                  TabBarNowPlaying(),
                  TabBarNowPlaying(),
                  TabBarNowPlaying(),
                  TabBarNowPlaying(),
                  // Nội dung của Tab 2
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
