import 'package:flutter/material.dart';


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