import 'package:flutter/material.dart';

class RowTopHome extends StatelessWidget {
  const RowTopHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
