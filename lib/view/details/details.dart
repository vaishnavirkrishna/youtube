import 'package:flutter/material.dart';

import '../listtile/listtile.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th?id=OIP.BqT23nOiaGBkoii6EOUCdgHaHd&w=248&h=251&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                  radius: 30,
                ),
                title: Text(
                  "Vaishnavi R Krishna",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                subtitle: Text.rich(TextSpan(
                    text: "@vaishnavirkrishna\n\n",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    children: [
                      TextSpan(
                          text: " manage your google account",
                          style: TextStyle(color: Colors.blue))
                    ])),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildListTile("Your Channel", Icons.account_box),
            buildListTile("Turn on Incognito", Icons.inbox_rounded),
            buildListTile("Add Account", Icons.person),
            Divider(thickness: 1, color: Colors.grey),
            buildListTile("Get Youtube Premium", Icons.account_box),
            buildListTile("Purchases and Memberships", Icons.inbox_rounded),
            buildListTile("Time Watched", Icons.watch_rounded),
            buildListTile(
                "Your Data in Youtube", Icons.data_saver_off_outlined),
            Divider(thickness: 1, color: Colors.grey),
            buildListTile("Settings", Icons.settings),
            buildListTile("Help and Feedback", Icons.help),
            Divider(thickness: 1, color: Colors.white),
            buildListTile("Youtube Studio", Icons.youtube_searched_for),
            buildListTile("Youtube MUSIC", Icons.youtube_searched_for_sharp),
            buildListTile("Youtube Kids", Icons.currency_yuan_rounded),
          ],
        ),
      ),
    );
  }
}
