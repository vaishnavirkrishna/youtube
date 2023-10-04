import 'package:flutter/material.dart';

Widget buildListTile(String title, IconData icon) {
  return ListTile(
    leading: Icon(
      size: 30,
      icon,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
