import 'package:flutter/material.dart';
import 'package:youtube/appbar/appbar.dart';
import 'package:youtube/bottomnavigationbar/bottomnavigation.dart';
import 'package:youtube/drawer.dart';
import 'package:youtube/view/shorts/smallshorts.dart';

import 'package:youtube/widgets/scroll.dart';

import 'package:youtube/widgets/videos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<String> utube = [
      'All',
      'Music',
      'Tamil Cinema',
      'Jurassic Park',
      'News',
      'Relevant news'
    ];
    List<String> img = [
      "https://th.bing.com/th/id/OIP.xTjXu8nrJ2qHpDabpX6YFQHaE7?w=275&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://www.holidify.com/images/cmsuploads/compressed/5621259188_e74d63cb05_b_20180302140149.jpg",
      "https://www.bing.com/th/id/OIP.bPz92aj_RGTMD-IROdnhHAHaEK?w=329&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th/id/OIP.FoIvoUl9jqKvOj2CosiytgHaEK?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    ];
    return Scaffold(
        drawer: DrawerPage(),
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        appBar: CustomAppBar(),
        bottomNavigationBar: BottomNavigation(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 50,
                child: scrollbar(utube: utube),
              ),
              Container(
                margin: EdgeInsets.only(right: 270),
                child: Container(
                  height: 50,
                  width: 80,
                  child: Image.network(
                    "https://th.bing.com/th/id/OIP.7jVXZQ-RSKlkdLyIhTkusgAAAA?w=210&h=119&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SmallShorts(),
              SizedBox(
                height: 10,
              ),
              videos(img: img),
            ],
          ),
        ));
  }
}
