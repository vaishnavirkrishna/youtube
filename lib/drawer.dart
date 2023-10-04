import 'package:flutter/material.dart';
import 'package:youtube/view/homescreen/homescreen.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'Trending',
      'Shopping',
      'Music',
      'Film',
      'Live',
      'Gaming',
      'News',
      'Sports',
      'Learning',
      'Fashion & beauty',
    ];
    List<Icon> DrawerIcons = [
      Icon(
        Icons.local_fire_department_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.local_mall_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.music_note_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.movie_creation_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.sensors_rounded,
        color: Colors.white,
      ),
      Icon(
        Icons.sports_esports,
        color: Colors.white,
      ),
      Icon(
        Icons.newspaper,
        color: Colors.white,
      ),
      Icon(
        Icons.emoji_events_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.lightbulb_outline,
        color: Colors.white,
      ),
      Icon(
        Icons.dry_cleaning,
        color: Colors.white,
      ),
    ];

    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        )),
                    icon: Icon(Icons.arrow_back)),
                Container(
                  height: 30,
                  width: 120,
                  child: Image.asset(
                    "assets/images/youtube.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: text.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      children: [
                        DrawerIcons[index],
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          text[index],
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
