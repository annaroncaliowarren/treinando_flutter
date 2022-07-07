import 'package:flutter/material.dart';

class RowTrendingHome extends StatelessWidget {
  const RowTrendingHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

