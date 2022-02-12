import 'package:flutter/material.dart';
import 'package:thirvusoft_app/main.dart';
import 'package:thirvusoft_app/views/categories/tl_scrum_name_list.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Home Page"),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const namelist()));
                },
                splashColor: Colors.indigo,
                highlightColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Img.png",
                        height: 150,
                      ),
                      const Text(
                        "Task",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ),
                    (route) => false,
                  );
                },
                splashColor: Colors.indigo,
                highlightColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Img1.png",
                        height: 150,
                      ),
                      const Text(
                        "Leave",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                splashColor: Colors.indigo,
                highlightColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Img2.png",
                        height: 150,
                        width: 195,
                      ),
                      const Text(
                        "Attendance",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              )
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          ),
        ),
      ),
    );
  }
}
