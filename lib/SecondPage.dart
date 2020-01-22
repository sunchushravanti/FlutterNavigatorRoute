import 'package:flutter/material.dart';
import 'package:flutter_stackapp/ThirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SECOND PAGE"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are on the second page!',
            ),
            RaisedButton(
              child:Text("Click the second button"),
              onPressed: (){
                Navigator.pushNamed(context, '/screen3');
/*

                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ThirdPage();
                    }
                ));
*/
              },

            )

          ],
        ),
      )
      ,
    );
  }
}