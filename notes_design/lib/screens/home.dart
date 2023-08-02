import 'package:flutter/material.dart';
import '../item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 25,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '--',
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: 25,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'S',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: const Text(
                "A Complete platform for busines and Startups",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: const Item(
                        title: "Project Management", totalDownloads: 4500),
                  ),
                  const Item(
                      title: "Mobile Delivery App", totalDownloads: 127372133),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: const Item(
                        title: "Project Management", totalDownloads: 4500),
                  ),
                  const Item(
                      title: "Mobile Delivery App", totalDownloads: 127372133),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: const Item(
                        title: "Project Management", totalDownloads: 4500),
                  ),
                  const Item(
                      title: "Mobile Delivery App", totalDownloads: 127372133),
                ],
              ),
            ),
            const Item(title: "Mobile Delivery App", totalDownloads: 127372133),
          ],
        ),
      ),
    );
  }
}
