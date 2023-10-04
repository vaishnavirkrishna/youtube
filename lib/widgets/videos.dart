import 'package:flutter/material.dart';
import 'package:youtube/videoplayer.dart';
import 'package:youtube/widgets/videomorevert.dart';

class videos extends StatelessWidget {
  const videos({
    super.key,
    required this.img,
  });

  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayer(),
          )),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
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
    );
  }
}
