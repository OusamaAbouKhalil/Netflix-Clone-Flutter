import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/GlobalVars.dart';
import 'package:netflix_clone/utils/Colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _page = 0;
  late PageController pageController; // for tabs animation

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  //animate tabs
  void navigationTapped(int page) {
    pageController.jumpToPage(page);
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
                color: (_page == 0) ? primaryColor : secondaryColor),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: (_page == 1) ? primaryColor : secondaryColor),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library,
                color: (_page == 2) ? primaryColor : secondaryColor),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download,
                color: (_page == 3) ? primaryColor : secondaryColor),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,
                color: (_page == 4) ? primaryColor : secondaryColor),
            label: '',
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
