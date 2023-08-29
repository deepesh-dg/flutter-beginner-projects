import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/config/app_colors.dart';
import 'package:open_library/config/app_theme_data.dart';
import 'package:open_library/models/bottom_nav_data.dart';
import 'package:open_library/routes/app_routes.dart';
import 'package:open_library/screens/favorites/favorites.dart';
import 'package:open_library/screens/home/home.dart';
import 'package:open_library/screens/search/search.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final List<BottomNavData> _navData = [
  BottomNavData(
    icon: Icons.home,
    label: "Home",
    widget: const Home(),
  ),
  BottomNavData(
    icon: Icons.explore,
    label: "Search",
    widget: const Search(),
  ),
  BottomNavData(
    icon: Icons.favorite,
    label: "Favorites",
    widget: const Favorites(),
  ),
];

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  setIndex(int index) {
    if (index >= 0) {
      setState(() {
        this.index = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Library',
      theme: AppThemeData.getThemeData(),
      onGenerateRoute: (settings) => AppRoutes.generateRoutes(settings),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.lightGrey,
          onTap: setIndex,
          currentIndex: index,
          items: _navData
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.label,
                ),
              )
              .toList(),
          selectedItemColor: AppColors.secondary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        body: Stack(
          children: [
            for (int i = 0; i < _navData.length; i++)
              _buildOffstageNavigator(i),
          ],
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: this.index != index,
      child: _navData.elementAt(index).widget,
    );
  }
}
