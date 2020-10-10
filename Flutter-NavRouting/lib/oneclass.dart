import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Route Demo",
      initialRoute:'/',
      routes:{
        '/':(context) => firstpage(),
        '/second':(context) => secondPage(),
      }
    )
  );
}

class firstpage extends StatelessWidget {
  String str = "";

  firstpage({Key key, this.str}): super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(str),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //  Navigator.pop(context);
            Navigator.pushNamed(context, '/secondPage');
          },
          child: Text("Go Back")
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  String str = "";

  secondPage({Key key, this.str}): super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(str),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
             Navigator.pop(context);
          },
          child: Text("Go Back")
        ),
      ),
    );
  }
}