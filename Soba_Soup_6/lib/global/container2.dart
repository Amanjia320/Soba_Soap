import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Foodscreen1 extends StatefulWidget {
  late int index;
  Foodscreen1({required this.index, super.key});

  @override
  State<Foodscreen1> createState() => _Foodscreen1State();
}

List<String> itemtitles = [
  "Soba soup",
  "sei ua samun phrai",
  "Ratatouille Pasta",
  "KFC Burger",
  "Seekh Kabab",
];
List<String> itemsubtitles = [
  "Soba soup",
  "sei ua samun phrai",
  "Pasta",
  "Fried Chicken Feast",
  "A Spicy Journey on a Stick",
];

List<String> itemimages = [
  "Assets/images/soup1.png",
  "Assets/images/samun1.png",
  "Assets/images/pasta1.png",
  "Assets/images/burger1.png",
  "Assets/images/kabab1.png",
];

class _Foodscreen1State extends State<Foodscreen1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 130,
                width: 90,
                child: Image(
                  //fit: BoxFit.cover,
                  image: AssetImage(itemimages[widget.index]),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemtitles[widget.index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    itemsubtitles[widget.index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    '\$12',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: ListTile(
//         leading: SizedBox(
//           height: 120,
//           width: 70,
//           child: Image(
//             //fit: BoxFit.cover,
//             image: AssetImage(itemimages[widget.index]),
//           ),
//         ),
//         title: Text(itemtitles[widget.index]),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               itemsubtitles[widget.index],
//             ),
//             const Text(
//               '\$12',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             )
//           ],
//         ),

//         // ignore: prefer_const_constructors
//         trailing: Icon(Icons.arrow_forward_ios),
//       ),
//     );