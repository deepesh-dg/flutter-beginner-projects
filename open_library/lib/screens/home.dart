import "package:flutter/material.dart";
import "package:open_library/config/config.dart";
import "package:open_library/config/my_colors.dart";
import "package:open_library/models/nav_items.dart";
import "package:open_library/widgets/home_tab_content.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: Config.navItems.length,
    );

    // _tabController.addListener(() {
    // print(_tabController.index);
    // });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: const Text(
          "Menu",
          // style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: MyColors.primary,
        flexibleSpace: Opacity(
          opacity: 0.4,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/appbar-bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: Config.navItems
              .map(
                (NavItem navItem) => Tab(
                  text: navItem.name,
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: Config.navItems
            .map((navItem) => HomeTabContent(navItem: navItem))
            .toList(),
      ),
    );
  }
}
