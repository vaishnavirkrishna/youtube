import 'package:flutter/material.dart';
import 'package:youtube/view/details/details.dart';
import 'package:youtube/view/notification/notification.dart';
import 'package:youtube/view/search/search.dart';
import 'package:youtube/widgets/cast.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/youtube.png"),
            cast(),
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    )),
                child: Icon(Icons.notifications)),
            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage())),
                child: Icon(Icons.search)),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(),
                    ));
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th?id=OIP.BqT23nOiaGBkoii6EOUCdgHaHd&w=248&h=251&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                radius: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
