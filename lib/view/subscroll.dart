import 'package:flutter/material.dart';

class subsscroll extends StatelessWidget {
  const subsscroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 29, 29),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 90,
                width: 170,
                child: Center(
                    child: Image.network(
                  "https://i1.wp.com/filmeshilmy.com/wp-content/uploads/2019/12/Hindi-Film-Actors.jpg?fit=1280%2C720&ssl=1",
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'video titile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 75,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
