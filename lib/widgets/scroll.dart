import 'package:flutter/material.dart';
import 'package:youtube/drawer.dart';

class scrollbar extends StatelessWidget {
  const scrollbar({
    super.key,
    required this.utube,
  });

  final List<String> utube;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: utube.length,
      itemBuilder: (context, index) => Row(
        children: [
          if (index == 0)
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerPage(),
                  )),
              child: Icon(
                Icons.explore_off_outlined,
                color: Colors.white,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.5,
                ),
                child: Card(
                  color: Color.fromARGB(255, 45, 39, 39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Text(
                      utube[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
