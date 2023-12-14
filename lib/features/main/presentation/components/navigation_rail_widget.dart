import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/features/main/presentation/providers/page_provier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NvigationRailWidget extends ConsumerStatefulWidget {
  const NvigationRailWidget({
    super.key,
  });

  @override
  ConsumerState<NvigationRailWidget> createState() =>
      _NvigationRailWidgetState();
}

class _NvigationRailWidgetState extends ConsumerState<NvigationRailWidget> {
  @override
  Widget build(BuildContext context) {
    int pageIndex = ref.watch(pageProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        NavigationRail(
            groupAlignment: -0.85,
            onDestinationSelected: (value) {
              ref.read(pageProvider.notifier).update((state) => value);
            },
            labelType: NavigationRailLabelType.all,
            leading: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const SizedBox(height: 8),
              ],
            ),
            destinations: const <NavigationRailDestination>[
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
            selectedIndex: pageIndex),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        )
      ],
    );
  }
}
