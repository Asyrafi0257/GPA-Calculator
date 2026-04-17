import 'package:flutter/material.dart';
import 'package:gpa_calculator/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _Splashscreenstate();
}

class _Splashscreenstate extends State<Splashscreen> {
  @override
  //initstate ni akan run sekali sahaja bila screen buka
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 130),
            Image.asset("assets/images/uum.png", scale: 1.8),
            SizedBox(height: 40),
            Text(
              "MyUUM",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "GPA Calculator",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 220),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
