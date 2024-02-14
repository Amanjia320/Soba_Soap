import 'dart:developer';

import 'package:flutter/material.dart';

import '../global/container1.dart';
import '../global/container2.dart';

// ignore: must_be_immutable
class FoodDetails extends StatefulWidget {
  late int index;
  String itemNames;
  String itemImages;
  String itemAbout;

  FoodDetails({
    Key? key,
    required this.index,
    required this.itemNames,
    required this.itemImages,
    required this.itemAbout,
  }) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

List<String> itemNames = [
  "Soba soup",
  "sei ua samun phrai",
  "Ratatouille pasta",
  "KFC Burger",
  "Seekh Kabab",
];

List<String> itemImages = [
  "Assets/images/pasta1.png",
  "Assets/images/samun1.png",
  "Assets/images/pasta1.png",
  "Assets/images/burger1.png",
  "Assets/images/kabab1.png",
];

List<String> itemAbout = [
  "Soba soup is a traditional Japanese\n dish that features soba noodles served in a hot broth.\nSoba noodles are thin noodles made from buckwheat flour or a combination of buckwheat and wheat flour. The broth can vary, but it is often made with ingredients such as dashi(a Japanese stock made from fish and seaweed), soy sauce, mirin (a sweet rice wine), and sometimes a bit of sake.",
  "Sei ua samun phrai doesn't appear to be a widely recognized term or dish in mainstream culinary contexts. It's possible that it could be a local or regional dish, a specific recipe, or a term used in a particular cultural or culinary tradition that may not be widely known outside of its specific context.",
  "Ratatouille pasta is a dish inspired by the traditional French Provençal vegetable stew called ratatouille. Ratatouille typically consists of a variety of vegetables such as eggplant, zucchini, bell peppers, onions, and tomatoes, cooked in a flavorful combination of herbs and olive oil.",
  "A KFC burger typically features a crispy and seasoned chicken patty sandwiched between a soft hamburger bun. The chicken is the star, showcasing KFC's renowned fried chicken, known for its flavorful blend of herbs and spices. Complemented by fresh lettuce, tomato slices, and optional toppings like mayonnaise or special sauce, the KFC burger offers a satisfying combination of crunchy, juicy, and savory flavors.",
  "Seekh Kebab, also spelled seekh kabab or kebob, is a popular South Asian dish made from minced or ground meat, typically beef, lamb, or chicken, mixed with various spices and herbs. The mixture is then molded onto skewers or seekhs and grilled or cooked until it is well-done and has a smoky flavor.",
];

class _FoodDetailsState extends State<FoodDetails> {
  @override
  void initState() {
    super.initState();
    log(widget.index.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent.shade100,
        body: Stack(
          children: [
            Container(
              height: 250,
              width: 500,
              color: Colors.orangeAccent.shade100,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                height: 800,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 115, right: 10),
                  child: Column(
                    children: [
                      Text(
                        itemNames[widget.index],
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 105),
                            child: Text(
                              '50mint',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Text(
                            '4.7',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '325 kcal',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Ingredients',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FoodScreen2(
                              items: 'Biryani',
                              itempic: 'Assets/images/biryani1.png'),
                          FoodScreen2(
                              items: 'Kofta',
                              itempic: 'Assets/images/kofta1.png'),
                          FoodScreen2(
                              items: 'Egg', itempic: 'Assets/images/soup1.png'),
                          FoodScreen2(
                              items: 'Scallion',
                              itempic: 'Assets/images/samun1.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'About',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                        ),
                        child: Text(itemAbout[widget.index]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 60,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              color: Colors.orangeAccent.shade100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.lock_clock,
                                size: 35,
                              ),
                              Container(
                                height: 35,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: const Center(
                                  child: Text('1'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 45,
                right: 50,
                top: 40,
              ),
              child: Image(
                  height: 300,
                  width: 300,
                  image: AssetImage(itemimages[widget.index])),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
