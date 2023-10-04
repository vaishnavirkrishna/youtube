import 'package:flutter/material.dart';

class cast extends StatelessWidget {
  const cast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => SimpleDialog(
            backgroundColor: Colors.black,
            children: [
              Column(
                children: [
                  Text(
                    "Connect to a device",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.tv, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Link with TV code",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.info, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Learn More",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      child: Icon(Icons.cast),
    );
  }
}
