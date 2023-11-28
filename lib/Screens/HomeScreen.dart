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
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: mobileBackgroundColor,
            leading: Image.asset(
              'assets/images/netflix.png',
              scale: 20.0,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'TV Shows',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Movies',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'My List',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250.0,
              child: Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
