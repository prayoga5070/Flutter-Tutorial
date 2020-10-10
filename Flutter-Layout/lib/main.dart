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
      home: MyHomePage(title: 'Flutter Layout'),
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

class _MyHomePageState extends State<MyHomePage> {
  // int _currentSteps = 0;
  // List<Step> steps = <Step>[
  //   Step(
  //     title: Text("Tutorial 1"),
  //     content: Text("Content of tutorial number 01")
  //   ),
  //   Step(
  //     title: Text("Tutorial 2"),
  //     content: Text("Content of tutorial number 02")
  //   ),
  //   Step(
  //     title: Text("Tutorial 3"),
  //     content: Text("Content of tutorial number 03")
  //   ),
  //   Step(
  //     title: Text("Tutorial 4"),
  //     content: Text("Content of tutorial number 04")
  //   )
  // ];
  
  String lblText = "Epic Rating";

    Row rw =Row(children: <Widget>[
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
      ]
    );

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
      // GRID VIEW LAYOUT
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   children: <Widget>[
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //      Center(
      //       child: Text("Hello"),
      //     ),
      //      Center(
      //       child: Text("Hello"),
      //     ),
      //      Center(
      //       child: Text("Hello"),
      //     ),
      //      Center(
      //       child: Text("Hello"),
      //     ),
      //      Center(
      //       child: Text("Hello"),
      //     ),
      //     Center(
      //       child: Text("Hello"),
      //     ),
      //   ],
      // ),

      // List View And List Tile
      body: ListView(
        children: <Widget> [
         ListTile(
          title:
           Center(
               child : Text("Data 1"),
            )
         ),
          ListTile(
           subtitle: Text("Pekerjaaan apabila dilakukan dengan tekun dan semangat akan berbuah baik kedepannya jangan pernah untuk putus asa dalam menjalankan sebuah keinginan"),
         ),
        ],
      ),

      // Stepper and Step
      // body: Stepper(
      //   currentStep: _currentSteps,
      //   steps: steps,
      //   onStepContinue: (){
      //     setState(() {
      //       if (_currentSteps < steps.length -1 ){
      //            _currentSteps++;
      //       }else {
      //          _currentSteps = 0;
      //       }    
      //     });
      //   },
      // ),

      // Divider & DivideTiles
     /* body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text("Power Rangers"),
              subtitle: Text("Pembela kebenaran di dunia"),
              leading: Icon(Icons.movie),
            ),
            ListTile(
            title: Text("Superman"),
            subtitle: Text("Pembela Yang benar"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("IT "),
            subtitle: Text("Hororr movie at your mind"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("2012"),
            subtitle: Text("The end of world"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("One Day"),
            subtitle: Text("Romance Who Know the Rights He Is"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Toe Ka Noi"),
            subtitle: Text("Usaha seorang anak muda"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Life Of Pi"),
            subtitle: Text("Brave with the awarness"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Fast And Furious 8"),
            subtitle: Text("Love with Pride"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Fast And Furious 8"),
            subtitle: Text("Love with Pride"),
            leading: Icon(Icons.movie),
          ),
          ]
          ).toList(),
          */
       /* children:<Widget> [
         ListTile(
            title: Text("Power Rangers"),
            subtitle: Text("Pembela kebenaran di dunia"),
            leading: Icon(Icons.movie),
          ),
          Divider(
            color: Colors.black,
            height: 2,
            thickness: 0.1,
          ),
          ListTile(
            title: Text("Superman"),
            subtitle: Text("Pembela Yang benar"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("IT "),
            subtitle: Text("Hororr movie at your mind"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("2012"),
            subtitle: Text("The end of world"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("One Day"),
            subtitle: Text("Romance Who Know the Rights He Is"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Toe Ka Noi"),
            subtitle: Text("Usaha seorang anak muda"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Life Of Pi"),
            subtitle: Text("Brave with the awarness"),
            leading: Icon(Icons.movie),
          ),
          ListTile(
            title: Text("Fast And Furious 8"),
            subtitle: Text("Love with Pride"),
            leading: Icon(Icons.movie),
          ),
        ],
        */

        //Aligning Widget
        /*body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("1"),
              Text("2"),
              Text("3"),
              Text("4"),
              Text("5"),
            ],
          ),
        ),
        */

        //Sizing Widget
       /*
        body: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child:
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ),
            ],
          ),
        ),
        */

        //Packing Widgets
        /*
        body: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget> [
              Icon(Icons.mood),
              Icon(Icons.mood),
              Icon(Icons.mood),
              Icon(Icons.mood),
              Icon(Icons.mood),
            ],
          )
        ),
        */

        //Nesting Rows & Column
       /* body: Container(
          child: Row(
            children:<Widget> [
              Row(
                children: <Widget>[
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                  Icon(Icons.check_box),
                ]
              ),
              Text("Percobaan Guys")
            ],
          ),
        ),
        */

        //Update 
        /*body: Container(
          child: Row(
            children:<Widget> [
              rw,
              Text(lblText),
              RaisedButton(
                onPressed:(){
                  setState(() {
                    lblText = "New Epic Rating";
                  });
                },
                child: Text("Update")
              ),
            ],
          ),
        ),
        */

        
      );
  }
}
