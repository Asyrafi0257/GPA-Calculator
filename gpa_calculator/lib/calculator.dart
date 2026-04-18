import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController subject1Controller = TextEditingController();
  TextEditingController subject2Controller = TextEditingController();
  TextEditingController subject3Controller = TextEditingController();
  TextEditingController subject4Controller = TextEditingController();

  TextEditingController mark1Controller = TextEditingController();
  TextEditingController mark2Controller = TextEditingController();
  TextEditingController mark3Controller = TextEditingController();
  TextEditingController mark4Controller = TextEditingController();

  TextEditingController credits1Controller = TextEditingController();
  TextEditingController credits2Controller = TextEditingController();
  TextEditingController credits3Controller = TextEditingController();
  TextEditingController credits4Controller = TextEditingController();

  double gpa = 0.0;
  String status = "";

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
            Container(
              width: 360,
              padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: subject1Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter subject name",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: mark1Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Marks",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: credits1Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Credits",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Container(
              width: 360,
              padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: subject2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter subject name",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: mark2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Marks",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: credits2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Credits",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Container(
              width: 360,
              padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: subject3Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter subject name",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: mark3Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Marks",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: credits3Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Credits",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Container(
              width: 360,
              padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: subject4Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter subject name",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: mark4Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Marks",
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: credits4Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Credits",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 3, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _handleSubmit,
                    child: Text("Submit", style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _handleClear,
                    child: Text("Clear", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),

            Text(
              "GPA: ${gpa.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Text(
              "Status: $status",
              style: TextStyle(
                fontSize: 20,
                color: status == "PASS" ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleClear() {
    subject1Controller.clear();
    subject2Controller.clear();
    subject3Controller.clear();
    subject4Controller.clear();

    mark1Controller.clear();
    mark2Controller.clear();
    mark3Controller.clear();
    mark4Controller.clear();

    credits1Controller.clear();
    credits2Controller.clear();
    credits3Controller.clear();
    credits4Controller.clear();
  }

  void _handleSubmit() {
    double totalPoints = 0;
    double totalCredits = 0;

    List<TextEditingController> marks = [
      mark1Controller,
      mark2Controller,
      mark3Controller,
      mark4Controller,
    ];

    List<TextEditingController> credits = [
      credits1Controller,
      credits2Controller,
      credits3Controller,
      credits4Controller,
    ];

    for (int i = 0; i < marks.length; i++) {
      double mark = double.tryParse(marks[i].text) ?? 0;
      double credit = double.tryParse(credits[i].text) ?? 0;

      double gradePoint = _getGradePoint(mark);

      totalPoints += gradePoint * credit;
      totalCredits += credit;
    }

    setState(() {
      if (totalCredits > 0) {
        gpa = totalPoints / totalCredits;
        status = gpa >= 2.0 ? "PASS" : "FAIL";
      } else {
        gpa = 0.0;
        status = "NO DATA";
      }
    });
  }
}

double _getGradePoint(double mark) {
  if (mark >= 80) {
    return 4.0;
  } else if (mark >= 75) {
    return 3.67;
  } else if (mark >= 70) {
    return 3.33;
  } else if (mark >= 65) {
    return 3.0;
  } else if (mark >= 60) {
    return 2.67;
  } else if (mark >= 55) {
    return 2.33;
  } else if (mark >= 50) {
    return 2.0;
  } else {
    return 0.0;
  }
}
