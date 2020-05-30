import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Student, BTech Computer Science Engineering at College of Engineering, Trivandrum";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A39), const Color(0xff071959)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
                  "assets/profilepic.jpeg",
                  width: 150,
                  height: 150,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Hari Krishnan U",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Connect with me",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.facebook.com/people/Hari-Krishnan/100016270302384");
                    },
                    child: Image.asset(
                      "assets/facebook.png",
                      width: 23,
                      height: 23,
                    )),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.linkedin.com/in/hari-krishnan-18052b190/");
                    },
                    child: Image.asset(
                      "assets/linkedin.png",
                      width: 23,
                      height: 23,
                    )),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL("https://github.com/Harikrishnan6336");
                    },
                    child: Image.asset(
                      "assets/github.png",
                      width: 23,
                      height: 23,
                    )),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL("https://twitter.com/HariKri73283753");
                    },
                    child: Image.asset(
                      "assets/twitter.png",
                      width: 23,
                      height: 23,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            /*   GestureDetector(
              onTap: () {
                _launchURL("https://www.linkedin.com/in/lamsanskar/");
              },
              /*child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
                //child: Text(
                //"Download My Resume",
                //style: TextStyle(color: Colors.white),
              ),
            ),*/
            )*/
          ],
        ),
        //  ],
      ),
    );
    // );
  }
}
