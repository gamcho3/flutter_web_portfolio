import 'package:flutter/material.dart';

class NvigationRailWidget extends StatefulWidget {
  const NvigationRailWidget({
    super.key,
  });

  @override
  State<NvigationRailWidget> createState() => _NvigationRailWidgetState();
}

class _NvigationRailWidgetState extends State<NvigationRailWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        NavigationRail(
            onDestinationSelected: (value) {
              selectedIndex = value;
              setState(() {});
            },
            labelType: NavigationRailLabelType.all,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text(
                    "홈",
                    style: TextStyle(color: Colors.black),
                  )),
              NavigationRailDestination(
                  icon: Icon(Icons.library_books_outlined),
                  selectedIcon: Icon(Icons.library_books),
                  label: Text(
                    "프로젝트",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
            selectedIndex: selectedIndex),
        VerticalDivider(
          thickness: 1,
          width: 1,
        )
      ],
    );
  }
}
