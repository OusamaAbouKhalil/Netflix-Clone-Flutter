import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/Colors.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
