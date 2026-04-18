import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Calculator",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "GPA Calculated using prescribed algorithm",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              width: 360,
              height: 100,
              padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subject",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    "Marks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    "Credits",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(),
          ],
        ),
      ),
    );
  }
}
