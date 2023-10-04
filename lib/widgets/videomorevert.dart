import 'package:flutter/material.dart';

class videomorevert extends StatelessWidget {
  const videomorevert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                child: Container(
                  height: 350,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.playlist_play_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Play next in queue",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: SizedBox(
                          height: 40,
                          width: 30,
                          child: Image.asset(
                              fit: BoxFit.cover, "assets/images/pp.jpg"),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.watch_later,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Save to Watch later",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.library_add,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Save to Playlist",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Download a Video",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Share",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.not_interested,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          "Not Interested",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  width: double.infinity,
                  color: Color.fromARGB(255, 41, 38, 38),
                ),
              );
            },
          );
        },
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ));
  }
}
