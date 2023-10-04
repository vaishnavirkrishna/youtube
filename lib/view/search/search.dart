import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();
  bool showLabel = true;

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      if (searchController.text.isNotEmpty) {
        setState(() {
          showLabel = !showLabel;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 57, 52, 52),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 30,
          width: 280,
          child: TextFormField(
            controller: searchController,
            decoration: InputDecoration(
              labelText: showLabel ? "Search on YouTube" : "",
              labelStyle: TextStyle(color: Colors.white, fontSize: 20),
              border: InputBorder.none,
              alignLabelWithHint: true,
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 57, 52, 52),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
