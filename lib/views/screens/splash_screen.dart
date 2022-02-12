import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

// ignore: camel_case_types
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  _splash_screenState createState() => _splash_screenState();
}

// ignore: camel_case_types
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        // ignore: non_constant_identifier_names
        context,
        // ignore: non_constant_identifier_names
        MaterialPageRoute(builder: (Context) => const home_page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 250)),
            Image.asset(
              'assets/images/thirvulogo.png',
              width: 200,
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.only(top: 300),
              child: Text(
                "Powered by",
                style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "THIRVUSOFT",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
