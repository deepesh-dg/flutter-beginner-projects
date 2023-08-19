import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Coloors.dart';
import 'package:whatsapp_clone/routes/router.dart';

class Contact {
  const Contact(
      {required this.name,
      required this.lastChat,
      required this.lastChatSameOwner});

  final String name;
  final String lastChat;
  final bool lastChatSameOwner;
}

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({super.key});

  final List<Contact> contacts = const [
    Contact(
        name: "Deepesh Gupta",
        lastChat: "Hello! How r u",
        lastChatSameOwner: false),
    Contact(name: "Krishna Kumar", lastChat: "Good", lastChatSameOwner: true),
    Contact(
        name: "Hitesh Choudhary",
        lastChat: "Done sir",
        lastChatSameOwner: true),
    Contact(name: "Rajat", lastChat: "Ok Bro", lastChatSameOwner: false),
    Contact(
        name: "Saksham Choudhary",
        lastChat:
            "Respassing askldfj klsdajflks dajfakls djfkl askljf kladskjf kls",
        lastChatSameOwner: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print("object");
                },
                contentPadding:
                    const EdgeInsets.only(left: 20, top: 0, right: 40),
                shape: LinearBorder.bottom(
                  side: const BorderSide(color: Color(0x1E000000), width: 1),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[600]!.withOpacity(0.3),
                  radius: 20,
                  child:
                      const Icon(Icons.person, size: 30, color: Colors.white),
                ),
                title: Text(contacts[index].name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                subtitle: Row(
                  children: [
                    if (contacts[index].lastChatSameOwner)
                      const Icon(Icons.check),
                    Flexible(
                      child: Text(contacts[index].lastChat,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 13)),
                    )
                  ],
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: () {
              Navigator.pushNamed(context, contactPageRoute);
            },
            child: const Icon(Icons.chat)));
  }
}
