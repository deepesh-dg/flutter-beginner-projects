import 'package:flutter/material.dart';
import 'coolors.dart';
import './routes/router.dart' as my_router;
import './screens/calls_home_page.dart.dart';
import './screens/chat_home_page.dart';
import './screens/status_home_page.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      initialRoute: my_router.homeRoute,
      onGenerateRoute: (settings) => my_router.Router.generatedRoutes(settings),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: greenColor,
              title: const Text(
                "WhatsApp",
                style: TextStyle(letterSpacing: 1),
              ),
              actions: <Widget>[
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(text: "CHATS"),
                  Tab(text: "STATUS"),
                  Tab(text: "CALLS"),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: const TabBarView(children: [
              ChatHomePage(),
              StatusHomePage(),
              CallsHomePage()
            ])));
  }
}
