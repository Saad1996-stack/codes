import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(ripple());
}
class ripple extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Flutter Development",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: ripple_anim(),
    );
  }
}
class ripple_anim extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>ripple_animation();
}
class ripple_animation extends State<ripple_anim> with SingleTickerProviderStateMixin {
  var arrlist = [150.0, 200.0, 250.0, 300.0, 350.0,];

  late Animation _animation;
  late AnimationController _animationController;
  //late Animation  _coloranimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    // _coloranimation = ColorTween(begin: Colors.lightGreen, end: Colors.blue).animate(_animationController);

    _animationController.addListener(() {
      setState(() {

      });
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Animation"),
      ),

      // body: Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: arrlist.map((radius)=>Container(
      //       width: radius*_animation.value,
      //       height: radius*_animation.value,
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       color: Colors.blue.withOpacity(1.0 - _animation.value),
      //     ),
      //     )
      //
      //     ).toList(),
      //
      //   ),
      // ),


      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildmycontainer(arrlist[0]),
            buildmycontainer(arrlist[1]),
            buildmycontainer(arrlist[2]),
            buildmycontainer(arrlist[3]),
            buildmycontainer(arrlist[4]),

            Icon(Icons.phone,size: 30, color: Colors.white,)

          ],
        ),
      ),

    );
  }


  Widget buildmycontainer(radius) {
    return Container(
      width: radius * _animation.value,
      height: radius * _animation.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animation.value),
      ),
    );
  }

}