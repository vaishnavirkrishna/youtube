import 'package:flutter/material.dart';
import 'package:youtube/bottomnavigationbar/bottomnavigation.dart';
import 'package:youtube/image_constant/images.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    List<IconData> iconImg = [
      Icons.share,
      Icons.play_arrow_outlined,
      Icons.download
    ];
    List<String> names = ["Share", "Remix", "Download"];
    List<String> videoList = ["y0uZABib60g"];
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );

    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.amber,
              child: YoutubePlayer(controller: _controller),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This is the title of a YouTube video|Quick video HD clarity| Design developer",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: "98k views 3 days ago #designdeveloper...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(img[2])),
              title: Text.rich(TextSpan(
                  text: "Design Developer  ",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: "657 K", style: TextStyle(color: Colors.grey))
                  ])),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text("Subscribe"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 59, 58, 56)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                        Text(
                          "3.1 K |",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                        ),
                        Icon(
                          Icons.thumb_down_alt_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color.fromARGB(255, 59, 58, 56)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              iconImg[index],
                              color: Colors.white,
                            ),
                            Text(names[index],
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      itemCount: iconImg.length,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("comments 111", style: TextStyle(color: Colors.white)),
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 14,
                      ),
                      title: Text(
                        "He will rise you from where you have fallen",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color.fromARGB(255, 59, 58, 56)),
              height: 80,
              width: 500,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.black,
              child: YoutubePlayer(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}
