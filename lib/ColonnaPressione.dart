import 'package:flutter/material.dart';

import 'InformationTitleCardTwo.dart';
import 'MyTriangularClipper.dart';

class ColonnaPressione extends StatelessWidget {
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
                        image: AssetImage('assets/images/pressione.jpg')),
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
                'Pressione sistolica',
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
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '<80',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '<90',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.green[400],
                      subTitle: '',
                      title: '91-140',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '>140',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '>210',
                    ),
                  ],
                ),
              ),
              Text(
                'Pressione diastolica',
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
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '<50',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '<60',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.green[400],
                      subTitle: '',
                      title: '60-90',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.yellow[600],
                      subTitle: '',
                      title: '>90',
                    ),
                    InformationTitleCardTwo(
                      iconColor: Colors.red[400],
                      subTitle: '',
                      title: '>120',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}