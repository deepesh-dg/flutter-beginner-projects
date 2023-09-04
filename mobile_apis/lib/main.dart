import 'package:flutter/material.dart';
import 'package:mobile_apis/screens/contact/contact.dart';
import 'package:mobile_apis/screens/storage/storage.dart';
import './screens/camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (context) => const Home(),
        "/camera": (context) => const AppCamera(),
        '/storage': (context) => const Storage(),
        '/contact': (context) => const AppContacts(),
        '/sms': (context) => const AppContacts(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select App Api")),
      body: ListView(
        children: <ListTile>[
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("/camera");
            },
            shape: const LinearBorder(
              side: BorderSide(color: Color(0x1E000000), width: 1),
              top: LinearBorderEdge(size: 1),
              bottom: LinearBorderEdge(size: 1),
            ),
            leading: const Icon(Icons.camera_alt),
            title: const Text("Camera"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("/storage");
            },
            shape: const LinearBorder(
              side: BorderSide(color: Color(0x1E000000), width: 1),
              top: LinearBorderEdge(size: 1),
              bottom: LinearBorderEdge(size: 1),
            ),
            leading: const Icon(Icons.sd_storage),
            title: const Text("Storage"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("/contact");
            },
            shape: const LinearBorder(
              side: BorderSide(color: Color(0x1E000000), width: 1),
              top: LinearBorderEdge(size: 1),
              bottom: LinearBorderEdge(size: 1),
            ),
            leading: const Icon(Icons.call),
            title: const Text("Contact"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("/sms");
            },
            shape: const LinearBorder(
              side: BorderSide(color: Color(0x1E000000), width: 1),
              top: LinearBorderEdge(size: 1),
              bottom: LinearBorderEdge(size: 1),
            ),
            leading: const Icon(Icons.message),
            title: const Text("SMS"),
          ),
        ],
      ),
    );
  }
}
