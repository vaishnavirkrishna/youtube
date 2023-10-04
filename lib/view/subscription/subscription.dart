import 'package:flutter/material.dart';
import 'package:youtube/appbar/appbar.dart';
import 'package:youtube/bottomnavigationbar/bottomnavigation.dart';
import 'package:youtube/image_constant/images.dart';
import 'package:youtube/view/shorts/smallshorts.dart';
import 'package:youtube/widgets/videomorevert.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  List<String> items = ["All", "Today", "Live", "Continue Watching"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 400,
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 360,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",
                            ),
                            radius: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Text(
                              "vaishu",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                      itemCount: 20,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: double.infinity,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 5,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  double containerWidth = items[index].length * 9.0;

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 20,
                    width: containerWidth,
                    child: Center(
                        child: Text(
                      items[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.network(
                "https://th.bing.com/th/id/OIP.gEkfRTlxzhAOIrsPIo7e4wHaFj?w=211&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                fit: BoxFit.cover,
              ),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 14,
              ),
              title: Text(
                "this is youtube clone",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                "This is subtitlt of listtile",
                style: TextStyle(color: Colors.white),
              ),
              trailing: videomorevert(),
            ),
            SizedBox(
              height: 10,
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
              height: 20,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: img.length,
              itemBuilder: (context, index) => Padding(
                child: Column(
                  children: [
                    Container(
                      child: Image.network(
                        img[index],
                        fit: BoxFit.fill,
                      ),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 14,
                      ),
                      title: Text(
                        "this is youtube clone",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "This is subtitlt of listtile",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: videomorevert(),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
