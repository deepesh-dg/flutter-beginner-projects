import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Dropdown",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Dropdown(options: ["one", "two", "three", "four"]),
    ),
  ));
}

class Dropdown extends StatefulWidget {
  const Dropdown({super.key, required this.options});

  final List<String> options;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selected = "";

  bool open = false;

  @override
  void initState() {
    super.initState();
    if (selected == "") {
      setState(() {
        selected = widget.options.first;
      });
    }
  }

  select(int option) {
    setState(() {
      selected = widget.options[option];
    });
  }

  toggleOptions() {
    setState(() {
      open = !open;
    });
  }

  capitalize(String text) {
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  Widget options() {
    if (open) return Container();

    return Positioned(
        // top: 20,
        child: Column(
      children: [
        for (var i = 0; i < widget.options.length; i++) ...[
          ElevatedButton(
            onPressed: () {
              select(i);
              toggleOptions();
            },
            child: Text(widget.options[i]),
          )
        ]
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 200,
            decoration: const BoxDecoration(color: Colors.red),
            child: Stack(
              children: [
                ElevatedButton(
                  onPressed: toggleOptions,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                  child: Text(
                    capitalize(selected),
                  ),
                ),
                options()
              ],
            )));
  }
}
