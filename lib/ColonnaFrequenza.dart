import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'InformationTitleCardTwo.dart';
import 'MyTriangularClipper.dart';

class ColonnaFrequenza extends StatelessWidget {

  static _launchURL() async {
    const url = 'https://www.riccardoriggi.it';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipPath(
                clipper: MyTriangularClipper(),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/cuore.jpg')),
                  ),
                  child: Center(
                      child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                  )),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              ),
              Text(
                'Frequenza Cardiaca',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                    fontSize: 26),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '<49',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '<60',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.green[400],
                      subTitle: '',
                      title: '60-100',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '>100',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '>150',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              ),
              RaisedButton(
                color: Colors.blueAccent[700],
                textColor: Colors.white,
                highlightColor: Colors.grey[700],
                onPressed: _launchURL,
                child: Text(
                  'Developed by RR',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}