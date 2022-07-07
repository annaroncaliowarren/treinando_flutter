import 'package:flutter/material.dart';

class ContainerMusicHome extends StatelessWidget {
  final String imgMusic;
  final String nameMusic;
  final String nameSinger;
  final String level;
  final Color colorFontLevel;
  final Color colorContainerLevel;

  const ContainerMusicHome({
    Key? key,
    required this.imgMusic,
    required this.nameMusic,
    required this.nameSinger,
    required this.level,
    required this.colorFontLevel,
    required this.colorContainerLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(25), // Image radius
                  child: Image.asset(
                    imgMusic,
                    fit: BoxFit.cover,
                    opacity: const AlwaysStoppedAnimation(0.7),
                  ),
                ),
              ),
              const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameMusic,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                nameSinger,
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
              color: colorContainerLevel,
            ),
            child: Text(
              level,
              style: TextStyle(
                fontSize: 12,
                color: colorFontLevel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
