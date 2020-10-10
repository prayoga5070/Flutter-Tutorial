import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Input Selection 2',
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
      home: MyHomePage(title: 'Flutter Input Selection 2'),
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

// class MyItem{
//   MyItem({this.isExpanded: false, this.header, this.body});

//   bool isExpanded;
//   final String header;
//   final String body;
// }

class _MyHomePageState extends State<MyHomePage> {
  //  List<MyItem> _items =<MyItem>[
  //   MyItem(header: "Header", body: "Body"),
  //   MyItem(header: "Header 2", body: "Body 2"),
  //   MyItem(header: "Header 3", body: "Body 3"),
  // ];

  // TextStyle tStyle = TextStyle(
  //   color: Colors.black,
  //   decoration: TextDecoration.none,
  //   fontSize: 24,
  // );
   double slider;
  //  bool switchB = false;
  //  int state = 0;
  //  String val = "";
  // int vol = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return ListView(
    //   children: <Widget>[
    //     ExpansionPanelList(
    //       expansionCallback: (int index, bool isExpanded){
    //         setState(() {
    //           _items[index].isExpanded = !_items[index].isExpanded;
    //         });
    //       },
    //       children: _items.map((MyItem item){
    //         return ExpansionPanel(
    //           headerBuilder: (BuildContext context, bool isExpanded ){
    //             return Text(item.header);
    //           },
    //           isExpanded: item.isExpanded,
    //           body: Container(
    //             child: Text(item.body)
    //           )
    //         );
    //       }).toList(),
    //     )
    //   ],
    // );
    //...............
    //CupertinoPage Scaffold
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     trailing: CupertinoButton(
    //       child: Text("Save", style: TextStyle(color: Colors.white,fontSize: 12),) ,
    //    ),
    //    backgroundColor: Colors.black,
    //   ),
    //   backgroundColor: Colors.blue[100],
    //   child: SafeArea(
    //     child: Container(
    //       child: Text("Hello"),
    //   )
    //  ),
    // );
    //......................
    //Cupertino Picker
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     backgroundColor: Colors.blue,
    //   ),
    //   child: Container(
    //     height: 240,
    //     child: CupertinoPicker(
    //       itemExtent: 50,
    //       onSelectedItemChanged: (int index) {
    //         print(index);
    //       },
    //       children: <Widget>[
    //         Text("Pizza", style: TextStyle(color: Colors.black, decoration: TextDecoration.none,),textAlign: TextAlign.center,),
    //         Text("Hotdog",style: TextStyle(color: Colors.black, decoration: TextDecoration.none),textAlign: TextAlign.center),
    //         Text("Hamburger",style: TextStyle(color: Colors.black, decoration: TextDecoration.none),textAlign: TextAlign.center),
    //         Text("Spagheti",style: TextStyle(color: Colors.black, decoration: TextDecoration.none),textAlign: TextAlign.center),
    //         Text("Lasagna",style: TextStyle(color: Colors.black, decoration: TextDecoration.none),textAlign: TextAlign.center),
    //       ],
    //   ),
    //  ),
    // );
    //.......................
    //Cupertino PopUP

  //   return CupertinoPageScaffold(
  //     navigationBar: CupertinoNavigationBar(
  //       backgroundColor: Colors.blue,
  //     ),

  //     child: SafeArea(
  //       child: Container(
  //       height: 60,
  //       width: 120,
  //       child: RaisedButton(
  //         child: Text("Click Me"),
  //         onPressed: () {
  //           showCupertinoModalPopup(
  //             context: context,
  //             builder: (BuildContext context) => CupertinoPopupSurface(
  //               child: Text("Hello", style: TextStyle(color:Colors.black,fontFamily: 'Helvetica'),),

  //             )
  //          );
  //         },
  //         ),
  //       ),
  //   )
  //  );
   //...............................
   //Cupertino Segmented Control
  //  return CupertinoPageScaffold(
  //     navigationBar: CupertinoNavigationBar(
  //       backgroundColor: Colors.blue,
  //     ),
  //     child: SafeArea(
  //       child: Container(
  //       // height: 80,
  //       // width: 480,
  //       child: Column(
  //           children: <Widget>[
  //             CupertinoSegmentedControl(
  //               children: <int, Widget>{
  //                 //TextStyle(color:Colors.grey,fontSize: 24),textAlign: TextAlign.center,
  //                 0: Text("Data 1",style: tStyle),
  //                 1: Text("Data 2",style: tStyle),
  //                 2: Text("Data 3",style: tStyle),
  //                 3: Text("Data 4",style: tStyle),
  //               },
  //               onValueChanged: (T){
  //                 print(T);
  //               }
  //             )
  //           ],
  //         ),
  //       ),
  //   )
  //  );
   //.........................
   //Cupertino Slider
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue,
      ),
      child: SafeArea(
        child: Container(
          child: CupertinoSlider(                
                value: slider,
                onChanged: (double vol) {
                  print(vol);

                  setState(() {
                    slider = vol;
                  });
                },
                min: 0,
                max: 100,
          )
        ),
      )
    );
    //............
    //Cupertino Switch
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     backgroundColor: Colors.blue,
    //   ),
    //   child: SafeArea(
    //     child: Container(
    //       child: CupertinoSwitch(                
    //             value: switchB,
    //             onChanged: (bool value){
    //               print(value);

    //               setState(() {
    //                 switchB = value;
    //               });
    //             },
    //             trackColor: Colors.blue,
                
    //       )
    //     ),
    //   )
    // );
    //...................
    //Cupertino Navigation Bar
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     leading: Icon(Icons.arrow_back ),
    //     middle: Text("Ios Beta", style:TextStyle(color: Colors.black)),
    //     trailing: Icon(Icons.android),
    //     backgroundColor: Colors.blueGrey,
    //     // padding: ,
    //   ),
    //   child: SafeArea(
    //     child: Container(
    //       child: CupertinoSwitch(                
    //             value: switchB,
    //             onChanged: (bool value){
    //               print(value);

    //               setState(() {
    //                 switchB = value;
    //               });
    //             },
    //             trackColor: Colors.blue,
                
    //       )
    //     ),
    //   )
    // );
    //........................
    //Cupertino TabBar
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     leading: Icon(Icons.arrow_back ),
    //     middle: Text("Ios Beta", style:TextStyle(color: Colors.black)),
    //     trailing: Icon(Icons.android),
    //     backgroundColor: Colors.black54,
    //     // padding: ,
    //   ),
    //   child: SafeArea(
    //     child: Container(
    //       child: CupertinoTabBar(                
    //            items: <BottomNavigationBarItem>[
    //              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    //              BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Menu")),
    //              BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), title: Text("Account")),
    //            ],
    //            currentIndex: state,
    //            onTap: (int index) {
    //              setState(() {
    //                print(index);
    //                state = index;
    //              });
    //            },
    //       )
    //     ),
    //   )
    // );
    //............................................
    //Cupertino TextField dan Scaffold dan navigation tab
    // return CupertinoTabScaffold(
    //   tabBar: CupertinoTabBar(                
    //            items: <BottomNavigationBarItem>[
    //              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    //              BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Menu")),
    //              BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), title: Text("Account")),
    //            ],
    //            currentIndex: state,
    //            onTap: (int index) {
    //              setState(() {
    //               //  print(index);
    //                state = index;
    //              });
    //            },
    //       ),
    //   tabBuilder: (BuildContext context, int index) {
    //     return CupertinoTabView(
    //       builder: (BuildContext context){
    //         return CupertinoPageScaffold(
    //                 navigationBar: CupertinoNavigationBar(
    //                 leading: Icon(Icons.arrow_back ),
    //                 middle: Text("Ios Beta", style:TextStyle(color: Colors.black)),
    //                 trailing: Icon(Icons.android),
    //                 backgroundColor: Colors.black54,
    //                 // padding: ,
    //               ),
    //         child: SafeArea(
    //           child: Container(
    //             child: CupertinoTextField(                
    //               style: TextStyle(color: Colors.black),
    //               onChanged: (String value) {
    //                 val = value;
    //                 print(value);
    //               },
    //               maxLength: 12,
    //             )
    //           ),
    //          )
    //         );
    //       }
    //     );
    //   },
    // );
  }
}
