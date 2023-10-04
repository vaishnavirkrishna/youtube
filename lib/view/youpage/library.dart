import 'package:flutter/material.dart';

import 'package:youtube/appbar/appbar.dart';
import 'package:youtube/bottomnavigationbar/bottomnavigation.dart';

import 'package:youtube/view/subscroll.dart';

class YouPage extends StatefulWidget {
  const YouPage({super.key});

  @override
  State<YouPage> createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 45,
              child: Row(
                children: [
                  Icon(Icons.watch_later_rounded, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "History",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        color: Colors.black,
                        height: 30,
                        width: 70,
                        child: Center(
                          child: Text(
                            "view all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => subsscroll(),
                  itemCount: 10,
                ),
              ),
            ),
            Divider(color: Colors.white),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.playlist_play_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Playlists',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    TextButton(onPressed: () {}, child: Text('View all')),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.ywsDjhwpp27a0LWg4IdvMQHaEM?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        Row(
                          children: [
                            Text(
                              index == 0 ? 'Liked Videos' : 'Playlist$index',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          'Private',
                          style: TextStyle(
                            color: const Color.fromARGB(132, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(
              color: const Color.fromARGB(136, 255, 255, 255),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 230,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.ondemand_video,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Your Videos',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Downloads',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.movie_creation_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Your Movie',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(150, 108, 82, 82),
            ),
          ],
        ),
      ),
    );
  }
}
