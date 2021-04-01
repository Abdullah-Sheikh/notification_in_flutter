import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  final GlobalKey<ScaffoldState> _scaffoldState =new GlobalKey<ScaffoldState>();
  void showbar()
  {
    _scaffoldState.currentState.showSnackBar(new SnackBar(content:new Text("Data Upload")));
  }

 // Bottom sheet code
  /*
  void _showbottom()
  {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context)
    {
      return new Container(
        padding: new EdgeInsets.all(35.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Some Info data',style: new TextStyle(fontWeight: FontWeight.normal),),
            new RaisedButton(onPressed: () => Navigator.pop(context),child: new Text("Close"),)
          ],
        ),
      );

    }
    );
  }

   */


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text('My First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Abdullah Sheikh'),
           new RaisedButton(onPressed: showbar, child: new Text("Click me"),),
           // new RaisedButton(onPressed: _showbottom, child:new Text("Click me"),)
          ],
        ),
      ),
    );
  }
}