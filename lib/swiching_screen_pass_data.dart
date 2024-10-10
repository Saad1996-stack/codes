import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/switching_data_another_screen.dart';

void main ()
{
  runApp(pass_the_data_to_another());
}
class pass_the_data_to_another extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        title: "Flutter Development",
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: pass_data(),
      );
  }
}

class pass_data extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>pass_the_data_Screen();
}

class pass_the_data_Screen extends State<pass_data>
{
  var pass_the_data_controll = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("Passing the data from one Screen to another"),
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
          color: Colors.indigo[100],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    controller: pass_the_data_controll,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  child: Text("Click to pass the data"),
                  onPressed: ()
                  {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>switch_data_another_screen(pass_the_data_controll.text.toString())));
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }

}
