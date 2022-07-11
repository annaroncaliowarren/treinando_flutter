import 'package:flutter/material.dart';
import '../../core/app_assets.dart';
import 'widgets/bottom_home.dart';
import 'widgets/container_add_home.dart';
import 'widgets/container_music_home.dart';
import 'widgets/row_top_home.dart';
import 'widgets/row_trending_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              const RowTopHome(),
              const ContainerAddHome(),
              const RowTrendingHome(),
              const SizedBox(height: 20),
              Wrap(
                children: [
                  ContainerMusicHome(
                    imgMusic: holographicColor,
                    nameMusic: 'Our Town',
                    nameSinger: 'Jamies Van Heusen',
                    level: 'Easy',
                    colorFontLevel: Colors.lightGreen.shade700,
                    colorContainerLevel: Colors.lightGreen.shade50,
                  ),
                  ContainerMusicHome(
                    imgMusic: blackWhite,
                    nameMusic: 'Silent Night',
                    nameSinger: 'Gruber Franz Xaver',
                    level: 'Easy',
                    colorFontLevel: Colors.lightGreen.shade700,
                    colorContainerLevel: Colors.lightGreen.shade50,
                  ),
                  ContainerMusicHome(
                    imgMusic: colorful,
                    nameMusic: 'Wellerman',
                    nameSinger: 'Traditional',
                    level: 'Medium',
                    colorFontLevel: Colors.lightBlue.shade700,
                    colorContainerLevel: Colors.lightBlue.shade50,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Repertoire',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomHomeBar(),
    );
  }
}
