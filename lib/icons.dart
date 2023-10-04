import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  final String? name;

  const CustomIcon(
      {required this.iconData, this.onPressed, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          IconButton(
            iconSize: 35,
            icon: Icon(
              iconData,
              color: Colors.white,
            ),
            onPressed: onPressed,
          ),
          Text(
            name!,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
