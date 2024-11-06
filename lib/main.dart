import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  List<Map<String, dynamic>> mdata = [
    {"color": Colors.amber, "name": "Naja","age" :10},
    {"color": Colors.blue, "name": "Geeta", "age" : 20},
    {"color": Colors.red, "name": "Pinki", "age" : 23},
    {"color": Colors.yellow, "name": "Divya", "age" : 32},
    {"color": Colors.greenAccent, "name": "Durva" ,"age" : 22},
    {"color": Colors.purpleAccent, "name": "Kinjal" , "age" : 34},
    {
      "color": Colors.yellow,
    }
  ];

  @override
  Widget build(BuildContext context) {
    /*   List<Widget> mWidgets = [];

    for (int i = 0; i < mdata.length; i++) {
      mWidgets.add(Container(
        width: double.infinity,
        height: 200,
        child: Center(
          child: Text(
            mdata[i]['name'],
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        color: mdata[i]['color'],
      ));
    }*/

    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mdata.map((element) {
            return Container(
              margin: EdgeInsets.all(11),
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                     Center(
                       child: Text(
                        element['name'] ?? "no name",
                        style: TextStyle(color: Colors.white, fontSize: 33),
                       ),
                     ),
                  Text(
                    element['age'].toString(),style: TextStyle(fontSize: 34),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: element['color'],
                  borderRadius: BorderRadius.circular(11),
              ),

            );
          }).toList(),
        ),
      ),
    );
  }
}

/*
/// by for loop

List<Widget> mWidgets = [];

    for (int i = 0; i < mdata.length; i++) {
      mWidgets.add(Container(
        width: double.infinity,
        height: 200,
        child: Center(
          child: Text(
            mdata[i]['name'],
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        color: mdata[i]['color'],
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mWidgets,
        ),



 */

/*
//List for only selected index data

 Container(
              height: 300,
              width: double.infinity,
              color: mdata[0]['color'],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: mdata[1]['color'],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: mdata[2]['color'],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: mdata[3]['color'],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: mdata[4]['color'],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: mdata[5]['color'],
            )

*/
