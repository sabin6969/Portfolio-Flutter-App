// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperContact extends StatefulWidget {
  const DeveloperContact({super.key});

  @override
  State<DeveloperContact> createState() => _DeveloperContactState();
}

class _DeveloperContactState extends State<DeveloperContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue.shade300,
              minWidth: 200,
              splashColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () async {
                if (await canLaunchUrl(
                    Uri.parse("https://github.com/sabin6969"))) {
                  await launchUrl(Uri.parse("https://github.com/sabin6969"));
                } else {
                  final snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      behavior: SnackBarBehavior.fixed,
                      action: SnackBarAction(
                          textColor: Colors.white,
                          label: "Okay",
                          onPressed: () {}),
                      content: Text(
                        "Failed to Redirect URL",
                        style: TextStyle(color: Colors.white),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text(
                "Github",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Made with ",
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  EvaIcons.heart,
                  size: 25,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "by Sabin Poudel",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
