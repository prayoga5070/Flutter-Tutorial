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
        primarySwatch: Colors.deepOrange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Zimbeee Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        title: Text('Zimbeee Page'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child : Container(
          // child: Image(
          //   image : NetworkImage("https://betanews.id/wp-content/uploads/2020/04/20200415_BETA_RS_HARYANTO-MENARA-KUDUS.jpg"),
          //   image: AssetImage( "assets/images/Shantika.jpg" ),
          // )
          child: Column(
            children: <Widget>[
             new ConstrainedBox(
                constraints: BoxConstraints(minHeight: 20),
                child : new Text("Haryanto",
                style: new TextStyle(
                  color:Colors.red,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              ),
               new Listener(
                 onPointerDown: (PointerDownEvent event){
                   print("Terklik");
                   print(event);
                 },
                 onPointerMove: (PointerMoveEvent event){
                   print("pindah");
                   print(event);
                 },
                  child :new Padding(
                    padding:EdgeInsets.fromLTRB(20, 0 , 20,0) ,
                    child :new Image(
                  image: NetworkImage("https://betanews.id/wp-content/uploads/2020/04/20200415_BETA_RS_HARYANTO-MENARA-KUDUS.jpg"),
                ),
                    ),
                  
              ), 
              new Padding(
                padding:EdgeInsets.fromLTRB(20, 0 , 20 , 0),
                child: new Text("New Shantika",
                style: new TextStyle(
                  color: Colors.red,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ) 
              ),
              ),
              new Padding(
                padding:EdgeInsets.fromLTRB(20, 0 , 20,5),
                child: GestureDetector(
                  onDoubleTap: ()
                  {
                    print("2 kali");
                  },
                  onTap: ()
                  {
                    print("1 kali");
                  },
                  onLongPress: ()
                  {
                    print("Longpress");
                  },
                  onLongPressUp: ()
                  {
                    print("Longpress lepas");
                  },
                  // onVerticalDragStart: (DragStartDetails details)
                  // {
                  //   print("V-Mulai");
                  //   print(details);
                  // },
                  // onVerticalDragUpdate: (DragUpdateDetails details)
                  // {
                  //   print("V-update");
                  //   print(details);
                  // },
                  // onHorizontalDragStart: (DragStartDetails details)
                  // {
                  //   print("H-Mulai");
                  //   print(details);
                  // },
                  // onHorizontalDragUpdate: (DragUpdateDetails details)
                  // {
                  //   print("H-update");
                  //   print(details);
                  // },
                  onPanStart: (DragStartDetails details)
                  {
                    print("Pan-Start");
                    print(details);
                  },
                  onPanUpdate: (DragUpdateDetails details)
                  {
                    print("Pan-Update");
                    print(details);
                  },
                    child: new Image(
                    image: AssetImage( "assets/images/Shantika.jpg" ),
                  ),
                ),
              ),
              new Padding(
                padding:EdgeInsets.fromLTRB(10, 0 ,10,0),
                child : new Text("Kudus - Jakarta",
                style: new TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontStyle: FontStyle.italic
                  ),
                )
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
