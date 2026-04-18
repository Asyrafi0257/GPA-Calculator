import 'package:flutter/material.dart';
import 'package:gpa_calculator/calculator.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Image.asset("assets/images/uum.png", scale: 3.5),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Container(
              width: 360,
              height: 280,
              //decoration tu untuk kita nak style kan container
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
                //boxShadow kita guna untuk buat container tu ada shadow sikit
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/dashboard.png", scale: 2.5),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Dashboard",
                          style: GoogleFonts.playwriteAr(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),

            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              width: 360,
              height: 270,
              //decoration tu untuk kita nak style kan container
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
                //boxShadow kita guna untuk buat container tu ada shadow sikit
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/calculator.png", scale: 2.5),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: _handleCalculator,
                        child: Text(
                          "Calculator",
                          style: GoogleFonts.playwriteAr(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleCalculator() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Calculator()),
    );
  }
}
