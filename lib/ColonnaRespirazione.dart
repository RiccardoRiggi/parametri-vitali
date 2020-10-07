import 'package:flutter/material.dart';

import 'InformationTitleCard.dart';
import 'InformationTitleCardTwo.dart';
import 'MyTriangularClipper.dart';

class ColonnaRespirazione extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
            color: Colors.white54,
            child: Column(
              children: <Widget>[
                ClipPath(
                  clipper: MyTriangularClipper(),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/polmone.jpg')),
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
                Text(
                  'Saturazione',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                      fontSize: 26),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InformationTitleCard(
                        iconColor: Colors.red[400],
                        subTitle: '',
                        title: '<89% ',
                      ),
                      InformationTitleCard(
                        iconColor: Colors.yellow[600],
                        subTitle: '',
                        title: '90% - 94%',
                      ),
                      InformationTitleCard(
                        iconColor: Colors.green[400],
                        subTitle: '',
                        title: '95% - 100%',
                      ),
                    ],
                  ),
                ),
                Text(
                  'Atti Respiratori',
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
                        title: '<8',
                      ),
                      InformationTitleCardTwo(
                        iconColor: Colors.yellow[600],
                        subTitle: '',
                        title: '<12',
                      ),
                      InformationTitleCardTwo(
                        iconColor: Colors.green[400],
                        subTitle: '',
                        title: '12 - 20',
                      ),
                      InformationTitleCardTwo(
                        iconColor: Colors.yellow[600],
                        subTitle: '',
                        title: '>20',
                      ),
                      InformationTitleCardTwo(
                        iconColor: Colors.red[400],
                        subTitle: '',
                        title: '>30',
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}