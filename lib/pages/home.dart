import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: EdgeInsets.all(20),
                height: 120,
                width: 500,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text('Lets get ready to analyse speeches!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                    ],
                  ),
                ),
              ),
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/speech');
                  },
                  icon: Icon(Icons.mic),
                  label: Text(
                      'Click here to start analysing speeches',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  )
              )

            ],
          ),
        ),
      );
  }
}