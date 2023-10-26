import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              backgroundColor: Colors.white,
              labelType: NavigationRailLabelType.all,
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: Text(
                      "소개",
                      style: TextStyle(color: Colors.black),
                    )),
                NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: Text(
                      "소개",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
              selectedIndex: 0),
          VerticalDivider(
            thickness: 1,
            width: 1,
          )
        ],
      ),
    );
  }
}
