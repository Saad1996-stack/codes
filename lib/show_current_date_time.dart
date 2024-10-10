import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main ()
{
  runApp((datetime()));
}
class datetime extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => currentdatetime();
}

class currentdatetime extends State<datetime>
{
  @override
  Widget build(BuildContext context)
  {
    var datetime = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Use Stateful Widget',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text('Stateful Widget with Current Date Time',style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.lightGreen[100],
        body: Center(
          child: Column(
            children: [
             // Text('Current Date Time:${datetime.hour}:${datetime.minute}: ${datetime.second}'),
             // Text("Current Date Time:${DateFormat("Hms").format(datetime)}"),
              //Text("Current Date Time:${DateFormat("yMMMMEEEEd").format(datetime)}"),
              //Text("Current Date Time:${DateFormat("MMMM").format(datetime)}"),
              Text("Current Date Time:${DateFormat().format(datetime)}"),

             // Text("Select Date"),

              Container(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Current Date Time"),
                onPressed: ()
                {
                  setState(() {

                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),


            ],
          ),
        ),

      ),
    );
  }

}