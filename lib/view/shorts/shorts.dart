import 'package:flutter/material.dart';
import 'package:youtube/bottomnavigationbar/bottomnavigation.dart';
import 'package:youtube/icons.dart';
import 'package:youtube/image_constant/images.dart';

class Shorts extends StatefulWidget {
  const Shorts({Key? key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("shorts"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 15,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          SizedBox(
            width: 15,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomIcon(iconData: Icons.thumb_up, name: "61k"),
                CustomIcon(iconData: Icons.thumb_down, name: "Dislike"),
                CustomIcon(iconData: Icons.message, name: "487"),
                CustomIcon(iconData: Icons.share, name: "share"),
                CustomIcon(iconData: Icons.toggle_off_rounded, name: "Remix"),
                Container(
                  child: Image(
                    image: NetworkImage(img[index]),
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(9),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(img[index]),
                        backgroundColor: Colors.amber,
                        radius: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "@abcd",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 20,
                        width: 115,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          onPressed: () {},
                          child: Text(
                            "subscribe",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150, bottom: 20),
                  child: Text(
                    "@this is subtitle\n of youtube shorts",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      img[index],
                    ),
                    fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}
