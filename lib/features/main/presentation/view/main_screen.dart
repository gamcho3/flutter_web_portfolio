import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/features/main/presentation/components/navigation_rail_widget.dart';
import 'package:flutter_portfolio_web/features/home/presentation/view/home_screen.dart';
import 'package:flutter_portfolio_web/features/main/presentation/providers/page_provier.dart';
import 'package:flutter_portfolio_web/features/project/project_screen.dart';
import 'package:flutter_portfolio_web/utils/responsive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pageIndex = ref.watch(pageProvider);
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) NvigationRailWidget(),
          Expanded(child: [HomeScreen(), ProjectScreen()][pageIndex])
        ],
      ),
    );
  }
}
