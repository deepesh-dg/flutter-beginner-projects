import 'package:flutter/material.dart';
import 'package:profile/config/coolors.dart';
import 'package:profile/widgets/rounded_image.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  final photos = const <String>[
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
    "assets/card-image.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.light,
      appBar: AppBar(
        backgroundColor: Coolors.light,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.topLeft,
              child: const Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Coolors.dark,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: const RoundedImage(
                  image: AssetImage("assets/profile.png"),
                  width: 100,
                  height: 100),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Anna Alvarado",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Coolors.dark,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                style: TextStyle(fontSize: 16, color: Coolors.midDark),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        "Photos",
                        style: TextStyle(
                          color: Coolors.midDark,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "456",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Coolors.midDark,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "602",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        "Follows",
                        style: TextStyle(
                          color: Coolors.midDark,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "290",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Coolors.light,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.elliptical(32, 32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 50,
                    offset: const Offset(-5, 40),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            for (int i = 0; i < photos.length; i += 3)
              Row(
                children: [
                  for (int j = i; j < i + 3 && j < photos.length; j++)
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.elliptical(12, 12),
                          ),
                          child: Image(image: AssetImage(photos[j])),
                        ),
                      ),
                    ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
