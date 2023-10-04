import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube/image_constant/images.dart';
import 'package:youtube/view/shorts/shorts.dart';

class SmallShorts extends StatelessWidget {
  const SmallShorts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Shorts(),
          )),
      child: Column(
        children: [
          Container(
            height: 250,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(img[index]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                          top: 2,
                          right: 5,
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      Positioned(
                          left: 7,
                          bottom: 20,
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "This is shorts title\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            TextSpan(
                              text: "this is subtile\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            TextSpan(
                              text: "5M Views",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ])))
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: img.length),
          ),
        ],
      ),
    );
  }
}
