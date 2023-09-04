import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class AppContacts extends StatefulWidget {
  const AppContacts({super.key});

  @override
  State<AppContacts> createState() => _AppContactsState();
}

class _AppContactsState extends State<AppContacts> {
  late bool _hasPermission;
  late List<Contact>? _allContacts;
  bool _initialized = false;

  @override
  void initState() {
    contact();
    super.initState();
  }

  Future<void> contact() async {
    _hasPermission = await FlutterContacts.requestPermission();
    if (_hasPermission) {
      _allContacts = await FlutterContacts.getContacts(
          withPhoto: true, withThumbnail: true);

      setState(
        () => _initialized = true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Contacts"),
      ),
      body: _initialized
          ? ListView.builder(
              itemCount: _allContacts?.length ?? 0,
              itemBuilder: (context, index) => ListTile(
                title: Text(_allContacts![index].displayName),
                subtitle: Text(_allContacts![index].phones.isNotEmpty
                    ? _allContacts![index].phones[0].number
                    : ""),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
