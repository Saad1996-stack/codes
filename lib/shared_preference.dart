import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main ()
{
  runApp(shared_pref());
}
class shared_pref extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Flutter Development",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: shared_preference(),
    );
  }
}
class shared_preference extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>Shared_Preferencesscreen();
}
class Shared_Preferencesscreen extends State<shared_preference>
{
  var namevalue = "No value saved";
  static const KEYNAME = "name";
  var shareprefcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                controller: shareprefcontroller,
                decoration: InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            ElevatedButton(
                onPressed: ()
                async {
                  var name = shareprefcontroller.text.toString();
                  var shar_pref = await SharedPreferences.getInstance();

                  // shar_pref.setString("name", sharepref.text.toString());
                  shar_pref.setString(KEYNAME,name);
                },
                child:
                Text("Save")
            ),


            Text(namevalue),
          ],
        ),
      ),
    );
  }

  void getValue()
  async{
    var pref = await SharedPreferences.getInstance();
    var getname = pref.getString(KEYNAME);
    //namevalue = getname !=null ? getname : "No saved value";
    namevalue = getname ?? "No saved value"; //?? means agar null nh hoga to getname ajaiga agar null hoga to no saved value ajai gi.

    setState((){

    });
  }
}