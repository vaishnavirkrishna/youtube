import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModalBottomSheet(
        backgroundColor: Color.fromARGB(255, 33, 31, 31),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                      child: Icon(
                        Icons.upload,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Upload a Video",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                      child: Icon(
                        Icons.reviews_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Create a short",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                      child: Icon(
                        Icons.live_tv,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Go Live",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                      child: Icon(
                        Icons.post_add,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Create a Post",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        },
      ),
      child: Icon(
        Icons.add_circle_outline,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}
