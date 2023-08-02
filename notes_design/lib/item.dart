// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.title,
      required this.totalDownloads,
      this.color = Colors.purpleAccent});

  final String title;
  final int totalDownloads;
  final Color color;

  String numToStr(int num) {
    const int billion = 1000000000, million = 1000000, thousand = 1000;

    if (num / billion >= 1) {
      final double value = num / billion;
      return "${value.toStringAsFixed(1)}B";
    }
    if (num / million >= 1) {
      final double value = num / million;
      return "${value.toStringAsFixed(1)}M";
    }
    if (num / thousand >= 1) {
      final double value = num / thousand;
      return "${value.toStringAsFixed(1)}K";
    }

    return "$num";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(206, 147, 216, 1),
            borderRadius: BorderRadius.all(Radius.elliptical(16, 16))),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 4),
                    child: Text(
                      numToStr(totalDownloads),
                      style: const TextStyle(fontSize: 13),
                    )),
                const Text(
                  "Downloads",
                  style: TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ));
  }
}
