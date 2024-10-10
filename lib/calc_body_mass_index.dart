import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp((calc_body_weight()));
}
class calc_body_weight extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter Development",
      debugShowCheckedModeBanner: false,
      home: calc_weight(),
    );
  }
}
class calc_weight extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>calculating_weight();
}
class calculating_weight extends State<calc_weight>
{
  var calckg = TextEditingController();
  var calchi = TextEditingController();
  var calchf = TextEditingController();

  var result = "";
  var backgroundcolor = Colors.indigo.shade200;
  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.red,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // startAngle: 1, //Sweepy Gradient
              // endAngle: 5,   // Sweepy Gradient
            )
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
        title: Text("Calculate body weight",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        // color: backgroundcolor,
        decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.black,
              Colors.purple,
              Colors.indigo,
              Colors.pink,
              Colors.amber,
              Colors.pinkAccent,
              Colors.white,
              Colors.brown,
              Colors.tealAccent,
              Colors.deepOrangeAccent,
              Colors.cyan,
              Colors.lightBlue,
              Colors.green,
              Colors.redAccent,
              Colors.blueAccent,
            ]
          )
        ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Basic Mass Index (BMI)",style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold,),),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: calckg,
                  decoration: InputDecoration(
                    label: Text("Enter Weight (in kgs)",style: TextStyle(color: Colors.white),),
                    prefixIcon: Icon(Icons.line_weight,color: Colors.white,),
                  ),
                  keyboardType: TextInputType.number,style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),

                TextField(
                  controller: calchf,
                  decoration: InputDecoration(
                    label: Text("Enter Height(in feet)",style: TextStyle(color: Colors.white)),
                    prefixIcon: Icon(Icons.height,color: Colors.white,),
                  ),
                  keyboardType: TextInputType.number,style: TextStyle(color: Colors.white),
                ),

                SizedBox(
                  height: 10,
                ),

                TextField(
                  controller: calchi,
                  decoration: InputDecoration(
                    label: Text("Enter Height(in inches)",style: TextStyle(color: Colors.white)),
                    prefixIcon: Icon(Icons.height,color: Colors.white,),
                  ),
                  keyboardType: TextInputType.number,style: TextStyle(color: Colors.white),
                ),

                SizedBox(
                  height: 15,
                ),

                ElevatedButton(child: Text("Calculate",style: TextStyle(color: Colors.white),),
                  onPressed: ()
                  {
                    var weightkg = calckg.text.toString();
                    var heightinches = calchi.text.toString();
                    var heightfeet = calchf.text.toString();

                    if(weightkg!="" && heightinches!="" && heightfeet!="")
                    {
                      //BMI Calculation:

                      var integarweight = int.parse(weightkg);
                      var integarinches = int.parse(heightinches);
                      var integarfeet = int.parse(heightfeet);

                      var totalinches = (integarfeet*12) + integarinches;
                      var totalCM = totalinches * 2.54;
                      var totalheightinmeters = totalCM/100;
                      var BMI = integarweight/(totalheightinmeters*totalheightinmeters);

                      if(BMI>25)
                      {
                        message = "You are Overweight";
                        backgroundcolor = Colors.orange.shade200;
                      }
                      else if(BMI<18)
                      {
                        message = "You are Underweight";
                        backgroundcolor = Colors.red.shade200;
                      }
                      else
                      {
                        message = "You are Healthy";
                        backgroundcolor = Colors.green.shade200;
                      }

                      setState(() {
                        result = "$message \n Your BMI is: ${BMI.toStringAsFixed(2)}";
                      });

                    }
                    else
                    {
                      setState(() {
                        result = "Please fill all the required fields";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Text(result,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ),
        ),
      ),
    );
  }

}