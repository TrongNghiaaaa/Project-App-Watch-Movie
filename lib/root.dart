import 'package:app_watch_movie/configs/constant.dart';
import 'package:app_watch_movie/presentation/screens/home/home_screen.dart';
import 'package:app_watch_movie/presentation/screens/search/search_screen.dart';
import 'package:app_watch_movie/presentation/watch%20list/watch_list_screen.dart';
import 'package:app_watch_movie/presentation/widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indexSelected,
        children: const [HomeScreen(), SearchScreen(), WatchListScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) async {
            showLoadingAnim(context);
            await Future.delayed(
              const Duration(milliseconds: 400),
              () => Get.back(),
            );
            setState(() {
              indexSelected = value;
            });
          },
          unselectedItemColor: Colors.white,
          currentIndex: indexSelected,
          selectedIconTheme: const IconThemeData(color: secondaryColor),
          selectedLabelStyle: const TextStyle(
              color: secondaryColor, fontWeight: FontWeight.bold),
          elevation: 0,
          backgroundColor: const Color(0xff242A32),
          selectedItemColor: secondaryColor,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/Home.svg',
                  color: indexSelected == 0 ? secondaryColor : null,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/Search.svg',
                  color: indexSelected == 1 ? secondaryColor : null,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/Save.svg',
                  color: indexSelected == 2 ? secondaryColor : null,
                ),
                label: 'Watch list')
          ]),
    );
  }
}
