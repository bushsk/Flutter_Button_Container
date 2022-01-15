import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless Widget',
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Container(
            //color: Colors.yellow,
            //3rd
            width: double.infinity,  
            height: 150.0, 
            //1st 2nd
            padding: EdgeInsets.all(35),
            margin: EdgeInsets.all(20),
            //4rth
            alignment: Alignment.bottomLeft,  
            transform: Matrix4.rotationZ(0.1),   
            //1st
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ // 2nd
                new BoxShadow(
                  color: Colors.green,
                  offset: new Offset(6.0, 6.0),
                ),
              ],
            ),
            child: Text(
              "Child1",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

/* class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click on this button';
    super.initState();
  }

  void onclick()
  {
    setState(() {
      ttext='The text is been changed';
    });
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: ()
          { onclick();},
            child: new Text(ttext),),
        ),
      ),
    );
  }
}
 */