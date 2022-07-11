import 'package:flutter/material.dart';
import '../../../core/app_assets.dart';

class ContainerAddHome extends StatelessWidget {
  const ContainerAddHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          image: Image.asset(christmasTree).image,
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
    );
  }
}
