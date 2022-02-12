// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  _listState createState() => _listState();
}

// ignore: camel_case_types
class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
          title: const Text("Scrum"),
        ),
      ),
    );
  }
}
