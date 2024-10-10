import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

// TextStyle mTextstyle70({Color textColor = Colors.greenAccent, FontWeight fontweight = FontWeight.bold, FontStyle fonts = FontStyle.italic})
// {
//   return TextStyle(
//     fontSize: 70,
//     //fontWeight: FontWeight.bold,
//     //fontStyle: FontStyle.italic,
//     color: textColor,
//     fontWeight: fontweight,
//     fontStyle: fonts,
//
//   );
// }



// TextStyle myTextStyle50({Color textcolor = Colors.deepPurple, FontWeight fontweight = FontWeight.normal,})
// {
//  return TextStyle(
//    color: textcolor,
//    fontWeight: fontweight,
//    fontSize: 60,
//    fontFamily: 'Customizedfont'
//  );
// }



TextStyle mtextstyle({Color textcolor = Colors.greenAccent, FontWeight fontweight = FontWeight.bold})
{
 return TextStyle (
 fontSize: 80,
 color: textcolor,
  fontWeight: fontweight,
  fontFamily: 'Customizedfont'
 );
}