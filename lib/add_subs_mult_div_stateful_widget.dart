import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp((updatestate()));
}
class updatestate extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
   title: "Flutter Development",
    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
    home: updatestateclasstwo(),
 );
  }
}
class updatestateclasstwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>updatestateclassthree();
}
class updatestateclassthree extends State
{
  var inputno1 = TextEditingController();
  var inputno2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text("Updating State Widets +,_,*,/"),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Column(
        children: [
          TextField(
          keyboardType: TextInputType.number,
            controller: inputno1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: inputno2,
          ),
          Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 100,
                  maxWidth: 200,
                  // minHeight: 100,
                  // minWidth: 100,

                ),
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {

                      });
                    var inputnum1 = int.parse(inputno1.text.toString());
                    var inputnum2 = int.parse(inputno2.text.toString());
                    var sum = inputnum1 + inputnum2;
                    result = "The Sum of $inputnum1 and $inputnum2 is : $sum";

                },
                    child: Text("Add",overflow: TextOverflow.fade,)),
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  var inputnum1 = int.parse(inputno1.text.toString());
                  var inputnum2 = int.parse(inputno2.text.toString());
                  var sub = inputnum1 - inputnum2;
                  result = "The Substration of $inputnum1 and $inputnum2 is : $sub";
              },
                  child: Text("Substract")),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      var inputnum1 = int.parse(inputno1.text.toString());
                      var inputnum2 = int.parse(inputno2.text.toString());
                      var mult = inputnum1 * inputnum2;
                      result = "The Multiplication of $inputnum1 and $inputnum2 is : $mult";

                    });
              },
                  child: Text("Multiply")),
              ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                    var inputnum1 = int.parse(inputno1.text.toString());
                    var inputnum2 = int.parse(inputno2.text.toString());
                    var div = inputnum1 / inputnum2;
                    result = "The Division of $inputnum1 and $inputnum2 is : ${div.toStringAsFixed(2)}";
              },
                  child: Text("Division")),
            ],
          ),
          Text(result),

        ],
      ),
    );
  }
}