import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/ComingSoonScreen.dart';
import 'package:netflix_clone/Screens/DownloadsScreen.dart';
import 'package:netflix_clone/Screens/HomeScreen.dart';
import 'package:netflix_clone/Screens/MoreScreen.dart';
import 'package:netflix_clone/Screens/SearchScreen.dart';

const webSize = 800.0;

List<Widget> homeScreenItems = [
 const HomePageScreen(),
 const SearchScreen(),
 const ComingSoonScreen(),
 const DownloadsScreen(),
 const MoreScreen(),
];