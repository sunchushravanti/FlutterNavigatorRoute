import 'package:flutter/material.dart';





class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third PAGE"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are on the third page!',
            ),
            RaisedButton(
              child:Text("Click the third button"),
              onPressed: (){
                Navigator.popUntil(context, ModalRoute.withName('/screen1'));

                //Navigator.popAndPushNamed(context, '/screen1');
                /*Navigator.of(context).pushNamedAndRemoveUntil('/screen1', ModalRoute.withName('/screen1'));
                */
                /*Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FirstPage();
                    }
                ));*/
              },

            )

          ],
        ),
      )
      ,
    );
  }
}



/*
Navigator.of(context).pushNamedAndRemoveUntil('/screen4', ModalRoute.withName('/screen1'));

routes: <String, WidgetBuilder> {
    '/screen1': (BuildContext context) => new Screen1(),
    '/screen2' : (BuildContext context) => new Screen2(),
    '/screen3' : (BuildContext context) => new Screen3(),
    '/screen4' : (BuildContext context) => new Screen4()
  },
*/
