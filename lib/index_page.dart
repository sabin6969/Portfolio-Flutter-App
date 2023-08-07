// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:portfolioapp/pages/home_page.dart';
import 'package:portfolioapp/pages/certificate_page.dart';
import 'package:portfolioapp/pages/contact_page.dart';
import 'package:portfolioapp/pages/info_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _MyHomeState();
}

class _MyHomeState extends State<IndexPage> {
  int _currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          InfoPage(),
          CertificatePage(),
          DeveloperContact(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 16),
        iconSize: 28,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            pageController.jumpToPage(_currentIndex);
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Home",
            icon: Icon(EvaIcons.homeOutline),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "About",
            icon: Icon(EvaIcons.infoOutline),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Certifications",
            icon: Icon(Icons.workspace_premium),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Dev Contact",
            icon: Icon(Icons.contact_mail_outlined),
          )
        ],
      ),
    );
  }
}
