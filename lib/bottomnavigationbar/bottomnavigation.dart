import 'package:flutter/material.dart';
import 'package:youtube/bottomnavigationbar/createmodelsheet.dart';
import 'package:youtube/view/homescreen/homescreen.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subscription/subscription.dart';
import 'package:youtube/view/youpage/library.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Shorts()),
            ),
            child: Icon(
              Icons.slideshow,
              color: Colors.white,
            ),
          ),
          label: "shorts",
        ),
        BottomNavigationBarItem(
          icon: bottomsheet(context: context),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Subscription()),
            ),
            child: Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
          ),
          label: "Subscriptions",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => YouPage())),
            child: Icon(
              Icons.playlist_play_rounded,
              color: Colors.white,
            ),
          ),
          label: "Library",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBottomNavigationBar();
  }
}
