import 'package:flutter/material.dart';
int um_counter=0;
int gap_counter=0;
int uh_counter=0;
int like_counter=0;
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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:Text('Speech Analysis'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation:0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

          ],
        ),
      )
    );
  }
}
