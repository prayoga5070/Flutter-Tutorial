import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Information Display'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//Data Tables
  class Name {
    String fName;
    String sName;
    
    Name({this.fName, this.sName});
  }

  var names = <Name> [
    Name(fName : "Frahann", sName: "Hussain"),  
    Name(fName : "Roby", sName: "Petersen"),
    Name(fName : "Dono", sName: "Doni"),  
    Name(fName : "Jaks", sName: "Sparrow"),  
    Name(fName : "Luther", sName: "King"),    
  ];

class _MyHomePageState extends State<MyHomePage> {
  // Icons
  // Icon icn = Icon(Icons.supervised_user_circle, color: Colors.red, size: 100,);

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //INFORMATION DISPLAY
        //Icons
        // child: IconButton(icon: icn, onPressed: null),
        
        //Chip
        // child: Chip(
        //   label: Text("Fragmented"),
        //   avatar: CircleAvatar(
        //     child: Icon(Icons.add),
        //   ),
        // ),

        // Tooltip
        // child: Tooltip(
        //   message: "data broken ! ",
        //   child: Text("Click Me"),
        // ),

        // Card
        // child: Card(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget> [
        //       ListTile(
        //         leading: Icon(Icons.album),
        //         title: Text("Shazamm"),
        //         subtitle: Text("Shazam was called Captain")
        //       ),
        //       ButtonTheme.bar(
        //         child: ButtonBar(
        //           children: <Widget> [
        //             FlatButton(
        //               child: Text("Watch Movie"),
        //               onPressed: () {},
        //             ),
        //             FlatButton(
        //               child: Text("Watch Trailer"),
        //               onPressed: () {},
        //             )
        //           ]
        //         ) ,
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.album),
        //         title: Text("Razor"),
        //         subtitle: Text("Razor was called Captain")
        //       ),
        //       ButtonTheme.bar(
        //         child: ButtonBar(
        //           children: <Widget> [
        //             FlatButton(
        //               child: Text("Watch Movie"),
        //               onPressed: () {},
        //             ),
        //             FlatButton(
        //               child: Text("Watch Trailer"),
        //               onPressed: () {},
        //             )
        //           ]
        //         ) ,
        //       )
        //     ],
        //   ),
        // ),    

        // Linear Progress Indicator
        // child: LinearProgressIndicator(
        //   value:0.4,
        //   backgroundColor: Colors.blue,
        //   valueColor: AlwaysStoppedAnimation<Color>(Colors.red)
        // ) 

        //Circular Progress Indicator
        // child: CircularProgressIndicator(
        //   value:0.8,
        //   backgroundColor: Colors.white,
        //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)
        // ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );

    // Data Table
    // body: DataTable(
    //   columns: <DataColumn> [
    //     DataColumn(
    //       label: Text("First Name"),
    //       onSort: (i, b) {
    //         setState(() {
    //           names.sort((a,b) => a.fName.compareTo(b.fName));
    //         });
    //       }
    //     ),
    //     DataColumn(
    //       label: Text("Last Name"),
    //       onSort: (i, b) {
    //         setState(() {
    //           names.sort((a,b) => a.sName.compareTo(b.sName));
    //         });
    //       }
    //     )
    //   ],
    //   rows: names.map((name) => DataRow(
    //     cells: [
    //       DataCell(
    //        Text(name.fName),
    //       ),
    //       DataCell(
    //        Text(name.sName),
    //       )
    //     ]
    //   )).toList()
    //  )
    // );
  }
}
