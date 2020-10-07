import 'package:flutter/material.dart';


class InformationTitleCardTwo extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color iconColor;

  const InformationTitleCardTwo({Key key, @required this.title, @required this.subTitle, @required this.iconColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 55,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          new BoxShadow(
              color: Colors.black26,
              blurRadius: 2.0,
              spreadRadius: 3.5,
              offset: Offset(0.0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          
                SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(title, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 16)),
                    Padding(
                      padding:EdgeInsets.fromLTRB(0, 17, 0, 0),
                      child:Container(
                        height:3.0,
                        width:55,
                        color:iconColor,),),
                  ],
                )
                )]
            ),
          )
        ]
      ),
    );
  }
}