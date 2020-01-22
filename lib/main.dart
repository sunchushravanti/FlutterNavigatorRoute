import 'package:flutter/material.dart';
import 'package:flutter_stackapp/FirstPage.dart';
import 'package:flutter_stackapp/SecondPage.dart';
import 'package:flutter_stackapp/ThirdPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    routes: <String, WidgetBuilder>{
      '/screen1': (BuildContext context) => new FirstPage(),
      '/screen2': (BuildContext context) => new SecondPage(),
      '/screen3': (BuildContext context) => new ThirdPage(),
    }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are on the main page!',
            ),
            RaisedButton(
              child:Text("Click the main button"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/screen1');
              },
            )

          ],
        ),
      ),
    );
  }
}
