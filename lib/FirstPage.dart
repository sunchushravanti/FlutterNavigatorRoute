import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_stackapp/SecondPage.dart';

class MyFirstPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),

    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: _onBackPressed,
      child:Scaffold(
      appBar: AppBar(
        title: Text("FIRST PAGE"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are on the first page!',
            ),
            RaisedButton(
              child:Text("Click the first button"),
              onPressed: (){
                Navigator.pushNamed(context, '/screen2');

                /*  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SecondPage();
                    }
                ));*/
              },

            )

          ],
        ),
      ),
    ));
  }
  Future<bool> _onBackPressed() {
    Navigator.pop(context);
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Are you sure to exit ?", style: TextStyle(
                fontSize: 22,
                fontFamily: 'Dancing Script',
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            backgroundColor: Color(0xffB82240),
            content: Text("Your Data will be erased!!", style: TextStyle(
                fontSize: 15,
                fontFamily: 'Dancing Script',
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            actions: <Widget>[
              FlatButton(
                child: Text("NO", style: TextStyle(fontSize: 15,
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
                onPressed: () {
                },
              ),
              FlatButton(
                  child: Text("YES", style: TextStyle(fontSize: 15,
                      fontFamily: 'Dancing Script',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                   onPressed: () {
                    exit(0);
                  }

              ),
            ],
          );
        }
    );
  }
}
