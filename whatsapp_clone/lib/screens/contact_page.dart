import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Coloors.dart';

class Contact {
  const Contact({required this.name, required this.about});

  final String name;
  final String about;
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  final List<Contact> contacts = const [
    Contact(
      name: "Hitesh Choudhary",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Deepesh Gupta",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Krishna Kumar",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Rajat",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Lavish",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Saksham Choudhary",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Deepender",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Surya Singh",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Subal",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Shubham",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Anirudh",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Sahil",
      about: "No calls, only WhatsApp",
    ),
    Contact(
      name: "Shweta",
      about: "No calls, only WhatsApp",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        leading: const BackButton(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Select contact",
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "${contacts.length} contacts",
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print("object");
              },
              contentPadding: const EdgeInsets.only(left: 20, top: 0),
              leading: CircleAvatar(
                backgroundColor: Colors.grey[600]!.withOpacity(0.3),
                radius: 20,
                child: const Icon(Icons.person, size: 30, color: Colors.white),
              ),
              title: Text(contacts[index].name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              subtitle: Text(contacts[index].about,
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
            );
          }),
    );
  }
}
