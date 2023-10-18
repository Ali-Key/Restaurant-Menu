import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:testing/Widgets/constants.dart';
import 'package:testing/Widgets/hero_card.dart';
import 'package:testing/Widgets/menu_Cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          title: const Text(
            'Restaurant Menu',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 14.0),
              child: Icon(IconlyLight.buy, color: textColor),
            ),
          ],
        ),
        body: const Column(
          children: [
            HeroCard(),
            MenuCards(),
            MenuCards(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 198, 13, 13),
          unselectedItemColor: Colors.black,
          backgroundColor: bgColor,
          type: BottomNavigationBarType.fixed,
          iconSize: 22,
          currentIndex: 1,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.heart,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              label: "Profile",
            ),
          ],

          // Set the background color of the profile icon
        ),
      ),
    );
  }
}
