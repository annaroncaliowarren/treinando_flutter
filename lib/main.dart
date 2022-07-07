import 'package:flutter/material.dart';
import 'package:flutter_treino/core/app_assets.dart';
import 'core/app_assets.dart';

void main() {
  runApp(
    MaterialApp(
      title: '+Treino',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 247, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'All compositions',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 110,
                      right: 10,
                    ),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    child: Icon(
                      Icons.align_vertical_center_rounded,
                      size: 25,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 45,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade100,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: Image.asset(tree).image,
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text(
                  'Our Christmas \nGift for You!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Trending Pieces',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(25), // Image radius
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2022/06/21/16/18/holographic-7276127_960_720.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // const Icon(
                    //   Icons.play_arrow_rounded,
                    //   size: 30,
                    //   color: Colors.white,
                    // ),
                    const SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Our Town',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Jamies Van Heusen',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 110),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen[100],
                      ),
                      child: Text(
                        'Easy',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.lightGreen[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
