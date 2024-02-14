// ignore: file_names
import 'package:flutter/material.dart';
import '../global/container.dart';
import '../global/container2.dart';
import 'food_details.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_left,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.adjust,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.square,
                size: 25,
              ),
              label: '',
            ),
          ],
        ),
        backgroundColor: Colors.orangeAccent.shade100,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resturant',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        'R',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        '20-30 mint',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '2.4km',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Resturant',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Orange Sandwiches is delicious',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.redAccent,
                  ),
                  Text(
                    '4.7',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodScreen(title: 'Recommand'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Popular'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Noodles'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Pizza'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Burger'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Soup'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Seekh kabab'),
                    const SizedBox(
                      width: 6,
                    ),
                    FoodScreen(title: 'Roll Pirata'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: itemNames.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetails(
                                          index: index,
                                          itemNames: itemNames[index],
                                          itemAbout: itemAbout[index],
                                          itemImages: itemImages[index],
                                        )),
                              );
                            },
                            child: Foodscreen1(
                              index: index,
                            ),
                          ));
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '... ',
                    style: TextStyle(color: Colors.orange, fontSize: 80),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orangeAccent.shade200),
                    child: const Center(
                      child: Icon(
                        Icons.lock_clock_outlined,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
