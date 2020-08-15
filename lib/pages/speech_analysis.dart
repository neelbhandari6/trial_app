import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trial_app/pages/chart_vis.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:trial_app/pages/chart_series.dart';

int um_counter=0;
var gap_counter=0;
int uh_counter=0;
int like_counter=0;
int stut_counter=0;
int blank;
class Speech extends StatefulWidget {
  @override
  _SpeechState createState() => _SpeechState();
}



class _SpeechState extends State<Speech> {

  void initState(){
    super.initState();
    um_counter=0;
    gap_counter=0;
    uh_counter=0;
    like_counter=0;
    stut_counter=0;
    blank =0 ;
  }
  double _crossAxisSpacing = 8, _mainAxisSpacing = 12, _aspectRatio = 2;
  int _crossAxisCount = 2;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var width = (screenWidth ) / _crossAxisCount;
    var height = width / _aspectRatio;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:Text('Speech Analysis'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation:0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowAltCircleDown,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).pushNamed("/visual");
            },
          ),
        ],
      ),
      body: Padding(
        padding : EdgeInsets.all(5),
        child: GridView.count(
          childAspectRatio: width/height,
          crossAxisCount: 2,
          children: <Widget>[
            RaisedButton(
                  onPressed: () {
                    setState(() {
                      uh_counter+=1;
                    });
                  },
                splashColor: Colors.white,
                color: Colors.black,
                  child: Text(
                    "Uh : $uh_counter",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),

            RaisedButton(
              onPressed: () {
                setState(() {
                  like_counter+=1;
                });
              },
              splashColor: Colors.blueAccent,
              color: Colors.black,
              child: Text(
                "Like : $like_counter",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  gap_counter+=1;
                });
              },
              splashColor: Colors.blueAccent,
              color: Colors.black,
              child: Text(
                "Gap : $gap_counter",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),

            RaisedButton(
              onPressed: () {
                setState(() {
                  um_counter+=1;
                });
              },
              splashColor: Colors.white,
              color: Colors.black,
              child: Text(
                "Um : $um_counter",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  stut_counter+=1;
                });
              },
              splashColor: Colors.blueAccent,
              color: Colors.black,
              child: Text(
                "Stutter : $stut_counter",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  blank+=1;
                });
              },
              splashColor: Colors.blueAccent,
              color: Colors.black,
              child: Text(
                "Blank : $blank",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),

          ],
        ),
      )
    );
  }
}




