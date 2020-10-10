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
      home: MyHomePage(title: 'Flutter Input Selection'),
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

enum EtosKerja {cermat,disiplin,pandai,kreatif}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  EtosKerja _selection;
  int _volume = 0;
  
  bool state = true;

  double sliderAmount= 0;
  

  //TimePicker
  // TimeOfDay _time = TimeOfDay.now();
  // TimeOfDay picked;

  // Future<Null> selectedTime(BuildContext context) async {
  //   picked = await showTimePicker(
  //     context: context,
  //     initialTime: _time,
  //     );
  //     setState(() {
  //       _time = picked;
  //       print(_time);
  //     });
  // }
  //......................
  // Date picker
  // DateTime _date = DateTime.now();

  // Future<Null> selectedDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: _date,
  //     firstDate: DateTime(1970),
  //     lastDate: DateTime(2100),
  //   );

  //   if (picked != null && picked != _date){
  //     print(_date.toString());
  //     setState(() {
  //       _date=picked;
  //     });
  //   }
  // }
  //....................
  //Open Alert
  // Future<void> OpenAlert() async{
  //   return showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context){
  //       return AlertDialog(
  //         title: Text("Phone Ringing !"),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text("Hape lau Bunyi"),
  //               Text("Angkat LUr")
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           FlatButton(
  //             child: Text("Lanjut"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           )
  //         ],
  //       );
  //     }
  //     );
  // }
  //.............................
  //Bottom Sheet
  // void OpenBotttomSheet(context){
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //        child: Wrap(
  //          children: <Widget>[
  //            ListTile(
  //              leading: Icon(Icons.alarm),
  //              title: Text("Alarm"),
  //              onTap: () {
  //                print("Open Alarm");
  //                Navigator.of(context).pop();
  //              }
  //            ),
  //            ListTile(
  //              leading: Icon(Icons.add),
  //              title: Text("Add Sheet"),
  //              onTap: () {
  //                print("Open Add Sheet");
  //                Navigator.of(context).pop();
  //              }
  //            ),
  //          ],
  //        ),
  //       );
  //     }
  //   );
  // }
  //................................
  //Snack Bar
  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();
  //......
  //Cupertino Setup

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //Snack Bar
      // key: _scaffold,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
      //......................
      // PopUp menu Button
      // child: PopupMenuButton <EtosKerja>(
      //   onSelected: (EtosKerja result) {
      //     print(result);
      //     setState(() {
      //       _selection = result;
      //     });
      //   },
      //     icon: Icon(Icons.view_list),
      //     itemBuilder: (BuildContext) => <PopupMenuEntry<EtosKerja>>[
      //       const PopupMenuItem<EtosKerja>(
      //         value : EtosKerja.cermat,
      //         child: Text("Bekerja dengan cermat"),
      //         ),
      //       const PopupMenuItem<EtosKerja>(
      //         value : EtosKerja.disiplin,
      //         child: Text("Disiplin tepat waktu dalam segala hal"),
      //         ),
      //       const PopupMenuItem<EtosKerja>(
      //         value : EtosKerja.kreatif,
      //         child: Text("Meliki sifat kreatif dimana memiliki jiwa seni tinggi"),
      //         ),
      //       const PopupMenuItem<EtosKerja>(
      //         value : EtosKerja.pandai,
      //         child: Text("Pandai dalam mengatur waktu dan job"),
      //         ),
      //   ],
      // )
      // .........................
      // Icon Button
      // child: IconButton(
      //   icon: Icon(Icons.volume_up),
      //   tooltip: "Change Volume Up",
      //   onPressed: (){
      //     setState(() {
      //       _volume += 10;
      //       print(_volume);
      //     });
      //   },
      //   ),
      //.......................
      // Button Bar
      // child: ButtonBar(
      //   alignment : MainAxisAlignment.spaceEvenly,
      //   mainAxisSize: MainAxisSize.max,
      //   children: <Widget>[
      //     FlatButton(
      //       onPressed: (){
      //         print ("home");
      //       },
      //       child: Text("Home")
      //     ),
      //     FlatButton(
      //       onPressed: (){
      //         print("category");
      //       },
      //       child: Text("Category") ,
      //       ),
      //     FlatButton(
      //       onPressed: (){
      //         print("account");
      //       },
      //       child: Text("Account") ,
      //       ),
      //   ],
      // ),
      //................................
      // Floating Action Button 
      //sama kayak waktu tampil pertama kali page flutter new project
      // child: FloatingActionButton(
      //   onPressed: (){
      //     print("Button Middle Pressed");
      //   },
      //   child: Icon(Icons.accessible_forward), 
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     print("Button Add Pressed");
      //   },
      //   child: Icon(Icons.add),
      //..............................................
      // Switch
      // child: Switch(
      //   value: state,
      //   onChanged: (bool s){
      //     setState(() {
      //       state = s;
      //       print(state);
      //     });
      //   },
      //   activeColor: Colors.blue,
      //   activeTrackColor: Colors.lightBlue[200],
      //     ),
      //.............................................
      // Slider
      // child:Slider(
      //   value: sliderAmount,
      //   onChanged: (double delta) {
      //     setState(() {
      //       sliderAmount= delta;
      //        print(sliderAmount);
      //     });
      //   },
      //   activeColor: Colors.red,
      //   min: 0,
      //   max: 100,
      //   divisions: 100,
      //     ),
      //..........................................
      // Time Picker
      // child: IconButton(
      //   icon: Icon(Icons.alarm),
      //   onPressed: (){
      //     selectedTime(context);
      //     print(picked);
      //       },
      //     )
      //............................
      //Date Picker
      // child: IconButton(
      //   icon: Icon(Icons.alarm_add),
      //   onPressed: (){
      //         selectedDate(context);
      //       }
      //     ),
      //.........................
      //Alert Pop
      // child: IconButton(
      //   icon: Icon(Icons.add_alert),
      //   onPressed: ()  {
      //     OpenAlert();
      //     }
      //   ),
      //................
      //Bottom Sheet
      // child: IconButton(
      //   icon: Icon(Icons.open_in_new),
      //   onPressed: (){
      //     OpenBotttomSheet(context);
      //     },
      //   ),
      //..............
      //Snack Bar
      // child: RaisedButton(
      //   onPressed: (){
      //     final snkbar = SnackBar(
      //       content: Text("Pizza"),
      //       action: SnackBarAction(
      //         label: "Order",
      //         onPressed: (){
      //             print("Pizza Print");
      //           }              
      //         )
      //       );
      //         _scaffold.currentState.showSnackBar(snkbar);
      //     }, 
      //   child: Text("Click Me")
      //  ),
      //...............
      //Cupertino Setup
      // child: CupertinoButton(
      //   child: Text("test"),
      //   onPressed: (){
      //     print("data");
      //     }
      //   ),
      //...............
      //Cupertino Action Sheet
      // child: RaisedButton(
      //   child: Text("Pesan Disini"),
      //   onPressed: () {
      //     final act = CupertinoActionSheet(
      //       title: Text("Menu Item"),
      //       message: Text("Silahkan Dipilih "),
      //       actions: <Widget>[
      //         CupertinoActionSheetAction(
      //           child: Text("Pizzaa"),
      //           onPressed: () {
      //             print("Pizza Original");
      //             Navigator.pop(context);
      //           }
      //         ),
      //         CupertinoActionSheetAction(
      //           child: Text("Burger"),
      //           onPressed: () {
      //             print("Beef Burger");
      //             Navigator.pop(context);
      //           }
      //         ),
      //         CupertinoActionSheetAction(
      //           child: Text("HotDog"),
      //           onPressed: () {
      //             print("Hotdog OR");
      //             Navigator.pop(context);
      //           }
      //         )
      //       ],
      //       cancelButton: CupertinoActionSheetAction(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         child: Text("Cancel"),
      //         ),
      //     );
      //     showCupertinoModalPopup(
      //       context: context,
      //       builder: (BuildContext context) => act
      //     );
      //    },
      //   ),
      //..................
      // Cupertino Activity indicator == Loading Screen
      // child: CupertinoActivityIndicator(),
      //..................
      //Cupertino Alert dialog
      // child: RaisedButton(
      //   child: Text("Click Me"),
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) => CupertinoAlertDialog(
      //         title: Text("Alert"),
      //         content: Text("Jangan Lupa Sholat Dulu yee Bangg"),
      //         actions: <Widget>[
      //           CupertinoDialogAction(
      //             child: Text("Okeee") ,
      //             onPressed: (){
      //               print("Okeee");
      //               Navigator.of(context).pop();
      //               },
      //             )
      //         ]
      //       )
      //     );
      //   },
      // ),
      //.........................
      //Cupertino Button
      child: CupertinoButton(
        child: Text("data"),
        onPressed: (){
          print("You have Clik Me");
        },
        color: Colors.black,
        borderRadius: BorderRadius.circular(180),
       ),
      //...........................
      //Cupertino Page Scaffold
      
      ),
    );
  }
}
