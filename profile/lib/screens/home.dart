import 'package:flutter/material.dart';
import 'package:profile/config/coolors.dart';
import 'package:profile/routes/routes.dart';
import 'package:profile/widgets/rounded_image.dart';

class Card {
  const Card(
      {required this.image,
      required this.profile,
      required this.name,
      required this.lastOnline});

  final String image;
  final String profile;
  final String name;
  final String lastOnline;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var stories = <String>[
    "assets/profile.png",
  ];

  var cards = <Card>[
    const Card(
        image: "assets/card-image.jpg",
        profile: "assets/profile.png",
        name: "Shane Rovertson",
        lastOnline: "22m"),
  ];

  ScrollController cardListController = ScrollController();

  Widget actionButton(String type) {
    button(IconData icon, Color bgColor, VoidCallback onPressed) => Container(
          padding: const EdgeInsets.all(4),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200] as Color,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200] as Color,
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => bgColor),
                  ),
                  onPressed: onPressed,
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  )),
            ),
          ),
        );

    if (type == "add") {
      return button(Icons.add, Colors.green[400] as Color, () {
        setState(() {
          stories.add("assets/profile.png");
          cards.add(
            const Card(
                image: "assets/card-image.jpg",
                profile: "assets/profile.png",
                name: "Shane Rovertson",
                lastOnline: "22m"),
          );
        });
      });
    }

    if (type == "remove") {
      return button(Icons.remove, Colors.red[400] as Color, () {
        setState(() {
          if (stories.isNotEmpty) {
            stories.removeAt(stories.length - 1);
          }
          if (cards.isNotEmpty) {
            cards.removeAt(cards.length - 1);
          }
        });
      });
    }

    return Container();
  }

  Widget card(Card cardInfo) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.elliptical(16, 16),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200] as Color,
              spreadRadius: 0,
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(cardInfo.image),
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
              leading: Image(
                image: AssetImage(cardInfo.profile),
              ),
              title: Text(cardInfo.name),
              subtitle: Text("${cardInfo.lastOnline} ago"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.light,
      appBar: AppBar(
        backgroundColor: Coolors.light,
        toolbarHeight: 100,
        // elevation: 1,
        title: Container(
          alignment: Alignment.centerLeft,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello,",
                style: TextStyle(
                  color: Color.fromRGBO(127, 145, 155, 1),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Alvarado!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Coolors.dark,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: (Colors.pink[200] as Color).withOpacity(0.5),
            //       spreadRadius: -12,
            //       blurRadius: 25,
            //       offset: const Offset(0, 10),
            //     )
            //   ],
            // ),
            child: RoundedImage(
              image: const AssetImage('assets/profile.png'),
              onTap: () {
                Navigator.pushNamed(context, Routes.profileRoute);
              },
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            child: SizedBox(
              height: 124,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  actionButton("remove"),
                  for (int i = 0; i < stories.length; i++)
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(bottom: 16),
                      child: RoundedImage(
                        image: AssetImage(stories[i]),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  actionButton("add"),
                ],
              ),
            ),
          ),
          for (int i = 0; i < cards.length; i++) card(cards[i]),
        ],
      ),
    );
  }
}
