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
    {
      "color": Colors.amber,
      "name": "Naja",
      "msg": "Hello",
      "Time": "11.11am",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
    {"color": Colors.blue,
      "name": "Geeta",
      "msg": "Hii",
      "Time": "10.11am",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",
    },
    {"color": Colors.red,
      "name": "Pinki",
      "msg": "How are you ?",
      "Time": "08.11am",
      "unreadcount": 3,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
    {"color": Colors.yellow,
      "name": "Divya",
      "msg": "You come to office ?",
      "Time": "07.11am",
      "unreadcount": 1,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
    {"color": Colors.greenAccent,
      "name": "Durva",
      "msg": "Good morning",
      "Time": "06.11am",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
    {"color": Colors.purpleAccent,
      "name": "Kinjal",
      "msg": "Thank you",
      "Time": "Yeseterday",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
    {"color": Colors.purpleAccent,
      "name": "Kinjal",
      "msg": "Thank you",
      "Time": "Yeseterday",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },{"color": Colors.purpleAccent,
      "name": "Kinjal",
      "msg": "Thank you",
      "Time": "Yeseterday",
      "unreadcount": 2,
      "img" : "asset/image/chandera_kinjal.jpeg",

    },
   /* {
      "color": Colors.yellow,
    }*/
  ];

  @override
  Widget build(BuildContext context) {
   /*    List<Widget> mWidgets = [];

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green.shade500),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mdata.map((element) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.all(11),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(element["img"]),
                            fit: BoxFit.cover,
                        ),
                      ),
                      ),
                     SizedBox(
                       width: 15,
                     ),
                     Expanded(
                       flex: 4,
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            element['name'] ?? "no name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            element['msg'],
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                                       ),
                     ),
                      Expanded(
                        flex: 2,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text(element['Time']),
                         SizedBox(
                           height: 11,
                         ),
                         Container(
                           width: 22,
                           height: 22,
                           decoration: BoxDecoration(
                             color: Colors.green,
                             shape: BoxShape.circle,
                           ),
                           child: Center(child: Text(element['unreadcount'].toString(),style: TextStyle(color: Colors.white),)),
                         ),
                        ],
                      ),
                      ),

                  ]
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 Container(
                   margin: EdgeInsets.only(left: 70),
                   width: double.infinity,
                   height: 1,
                   color: Colors.grey.withOpacity(0.5),
                 )
                ],
              ),
              decoration: BoxDecoration(
                // color: element['color'],
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
