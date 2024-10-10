import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/hero_anim_navigate_screen.dart';

void main ()
{
  runApp(hero_sreen());
}
class hero_sreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "flutter Development",
     theme: ThemeData(
       primarySwatch: Colors.indigo,
     ),
     home: hero_screens(),
   );
  }
}
class hero_screens extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),

      body: Center(
        child: InkWell(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>hero_ani_navigate_screen()));
          },
          child: Hero(
            child: Image.asset("assets/images/dartlogo.jpg",width: 150,height: 100,),
            tag: 'dart',
          ),
        ),
      ),
    );
  }

}