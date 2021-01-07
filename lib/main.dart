import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/card.dart';
import 'widgets/circles.dart';
import 'widgets/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _launchCaller(int number) async {
    var url = "tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not call $number';
    }
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not open $url';
    }
  }

  void _launchEmail(String emailid) async {
    var url = "mailto:$emailid?subject=Queries";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not mail to  $emailid';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/bbt.jpeg'),
            ),
            Texts(
              namee: 'Steve Jobs',
              fontt: FontStyle.italic,
              colour: Colors.white,
            ),
            Texts(
              namee: 'Founder Apple',
              fontt: FontStyle.normal,
              colour: Colors.black,
            ),
            Cards(
                icon: Icons.phone,
                name: "+91 80 4045 5150",
                onPressed: () {
                  _launchCaller(8040455150);
                }),
            Cards(
                icon: Icons.email,
                name: "bangalore_admin@apple.com",
                onPressed: () {
                  _launchEmail('bangalore_admin@apple.com');
                }),
            Container(
              height: 205,
              width: 280,
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 84.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                    Circles(
                      iconz: FontAwesomeIcons.twitter,
                      color: Colors.blueAccent,
                      url: () {
                        _launchUrl('https://twitter.com/apple');
                      },
                    ),
                    Circles(
                      iconz: FontAwesomeIcons.discord,
                      color: Color.fromRGBO(114, 137, 218, 1),
                      url: () {
                        _launchUrl('https://discord.gg/PvpyxWSe');
                      },
                    ),
                    Circles(
                      iconz: FontAwesomeIcons.instagram,
                      color: Color(0xFFDC2E73),
                      url: () {
                        _launchUrl('https://www.instagram.com/apple/');
                      },
                    ),
                    Circles(
                      iconz: FontAwesomeIcons.facebook,
                      color: Colors.lightBlue,
                      url: () {
                        _launchUrl('https://www.facebook.com/apple/');
                      },
                    ),
                  ]),
            )
          ],
        )),
      ),
    );
  }
}
