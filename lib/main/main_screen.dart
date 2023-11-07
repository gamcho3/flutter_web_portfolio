import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/main/components/navigation_rail_widget.dart';
import 'package:flutter_portfolio_web/home/home_screen.dart';
import 'package:flutter_portfolio_web/utils/responsive.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) NvigationRailWidget(),
          Expanded(child: HomeScreen())
        ],
      ),
    );
  }
}
