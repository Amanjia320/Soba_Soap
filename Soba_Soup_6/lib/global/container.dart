import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodScreen extends StatelessWidget {
  String title;
  FoodScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: title == "Recommand" ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(35)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: title == "Recommand" ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
