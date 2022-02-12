import 'package:flutter/material.dart';
import 'package:thirvusoft_app/views/categories/tl_scrum_task_list.dart';

class namelist extends StatefulWidget {
  const namelist({Key? key}) : super(key: key);

  @override
  _namelistState createState() => _namelistState();
}

class _namelistState extends State<namelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: const Text("List of Scrum"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const list()));
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 32.0, bottom: 32, left: 16.0, right: 16.0),
                  child: Center(
                    child: Text(
                      "Mani",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
