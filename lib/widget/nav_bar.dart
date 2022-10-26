import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.person, color: Color.fromARGB(255, 255, 255, 255)),
          Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255)),
          Icon(Icons.wine_bar, color: Color.fromARGB(255, 255, 255, 255)),
        ],
        inactiveIcons: const [
          Text(
            "My",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Wine",
            style: TextStyle(color: Colors.white),
          ),
        ],
        color: const Color.fromARGB(255, 255, 37, 37),
        height: 60,
        circleWidth: 60,
        initIndex: 1,
        onChanged: (v) {
          // TODO
        },
        // tabCurve: ,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: const Color.fromARGB(255, 183, 58, 58),
        elevation: 10,
      ),
    );
  }
}
