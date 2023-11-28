import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/Colors.dart';

import '../Widgets/ContinueWatchingCard.dart';

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
              scale: 5.0,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(
                  16.0,
                ),
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
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250.0,
                  child: Image.asset(
                    'assets/images/bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 35,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Row(
                        children: <Widget>[
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          Text(
                            'Play',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 35,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 240.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Text(
                      'Continue Watching',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0),
                    child: CWCard(),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 220,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 240, top: 15, bottom: 15),
                    child: Text("Popular on Netflix",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: Image(
                          image: AssetImage('assets/images/p2.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: Image(
                          image: AssetImage('assets/images/p3.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: Image(
                          image: AssetImage('assets/images/p4.jpg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
