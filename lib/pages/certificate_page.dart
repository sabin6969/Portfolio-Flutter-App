// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({super.key});

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  List<String> imagesPath = [
    "asset/certifications/Data Science.jpg",
    "asset/certifications/Getting Started with Git and Github.jpg",
    "asset/certifications/Python.jpg",
    "asset/certifications/SQL Basic.jpg",
    "asset/certifications/SQL Intermediate.jpg"
  ];
  List<String> certificationNames = [
    "Python for Data Science, AI & Development",
    "Getting Stared With Git and Github",
    "Python Basics",
    "SQL Basics",
    "SQL Intermediate",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: imagesPath.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: Colors.black,
              child: Container(
                height: 300,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagesPath[index]),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      certificationNames[index],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
