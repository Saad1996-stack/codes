import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(map_list());
}
class map_list extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Development",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: mapping_list(),
    );
  }
}
class mapping_list extends StatelessWidget
{
  var arrlist = [
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
    {
      'name' : 'Saad',
      'mob no' : '123456789',
      'unread' : '2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping List View"),
      ),

      //different single line data in one widget

      // body: Container(
      //   child: ListView(
      //     children: arrlist.map((value)
      //         {
      //           return Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 color: Colors.lightGreen,
      //               ),
      //
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Center(child: Text(value)),
      //               ),
      //             ),
      //           );
      //         }
      //     ).toList(),
      //   ),
      // ),


      //different multiple line data in one widget

        body: ListView(
          children: arrlist.map((value)
              {
                return ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(value['name'].toString()),
                  subtitle: Text(value['mob no'].toString()),
                  trailing: CircleAvatar(
                    radius: 12,
                      backgroundColor: Colors.blue[100],
                      child: Text(value['unread'].toString())),

                );
              }
          ).toList(),
        ),


    );
  }

}