import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> name = ["All", "Mentions"];
    List<String> images = [
      "https://th.bing.com/th?id=OIP.B3ndrU033-nckLnVc9PrEgHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
      "https://th.bing.com/th/id/OIP.FeZjbXXMBXLB48dPX0woawHaFo?w=245&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th/id/OIP.wBMp4cKdcuUYNQpa332M1QHaHl?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    ];
    List<String> cirImg = [
      "https://th.bing.com/th?id=OIP.-5YIoUQTUa2oPq8-w-CJiQHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
      "https://th.bing.com/th/id/OIP.lzz8ygeTM8lleFXbOL3HnwHaFK?w=282&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th/id/OIP.MOOSpqv205635F9k3oMu3gAAAA?w=178&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 21, 21),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Notifications"),
        actions: [
          Icon(Icons.cast),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 3,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: name.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    name[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(cirImg[index]),
                              radius: 20,
                            ),
                            title: Text.rich(TextSpan(
                                children: [TextSpan(text: "this is subtitle")],
                                text: "hai vaishnavi\n",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ))),
                            subtitle: Text("one day ago"),
                            trailing: Container(
                              height: 120,
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Card(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ))
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 2,
                      ),
                  itemCount: images.length))
        ],
      ),
    );
  }
}
