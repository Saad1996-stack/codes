import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(stack_class_one());
}
class stack_class_one extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter Stack Widget",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        ),
      home: stack_class_two(),
      );
  }
}

class stack_class_two extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => stack_class_three();
}

class stack_class_three extends State<stack_class_two>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget with Positioned",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        ],
      ),
      body: Container(
        width: 400,
        height: 300,
        child: Stack(
          children: [
            Container(
                width: 200,
                height: 200,
                color:Colors.indigoAccent[100],
              ),




            Positioned(
               right: 15,
               bottom: 15,
              child: Container(
                 width: 200,
                 height: 200,
                color: Colors.yellow,
              ),
            ),



            SizedBox(
              height: 20,
            ),

            Stack(
              children:[ Container(
                child: Positioned(
                  right: 25,
                  bottom: 25,
                  child: ElevatedButton(
                    child: Text("back"),
                    onPressed: ()
                      {
                      }

                  ),
                ),
              ),
      ]
            )


          ],
        ),
      ),
    );
  }

}