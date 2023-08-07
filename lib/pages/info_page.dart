// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("asset/images/mero img.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Sabin Poudel",
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "RK University",
                  style: GoogleFonts.poppins(fontSize: 22),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Enthusiastic programmer with a hunger for learning.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
