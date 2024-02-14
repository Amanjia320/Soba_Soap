import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodScreen2 extends StatefulWidget {
  //late int index;
  String items;
  String itempic;
  FoodScreen2(
      {
      //required this.index,
      required this.items,
      required this.itempic,
      super.key});

  @override
  State<FoodScreen2> createState() => _FoodScreen2State();
}

class _FoodScreen2State extends State<FoodScreen2> {
  @override
  void initState() {
    super.initState();
    //log(widget.index.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(
            height: 120,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.orangeAccent.shade100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    width: 200,
                    child: Image(
                      height: 60,
                      width: 75,
                      image: AssetImage(widget.itempic),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    widget.items,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
