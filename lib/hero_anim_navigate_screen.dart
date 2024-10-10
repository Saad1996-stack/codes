import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hero_ani_navigate_screen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero animated Navigation Screen"),
      ),
      body: Hero(
        tag: 'dart',
        child: Image.asset("assets/images/dartlogo.jpg"),
      ),
    );
  }

}