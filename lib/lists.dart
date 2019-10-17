import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double textSize = 128;

final List<Widget> fibonacci = [
  Text("0,5", style: TextStyle(fontSize: textSize)),
  Text("1", style: TextStyle(fontSize: textSize)),
  Text("2", style: TextStyle(fontSize: textSize)),
  Text("3", style: TextStyle(fontSize: textSize)),
  Text("5", style: TextStyle(fontSize: textSize)),
  Text("8", style: TextStyle(fontSize: textSize)),
  Text("13", style: TextStyle(fontSize: textSize)),
  Text("20", style: TextStyle(fontSize: textSize)),
  Text("40", style: TextStyle(fontSize: textSize)),
  Text("100", style: TextStyle(fontSize: textSize)),
  Text("?", style: TextStyle(fontSize: textSize)),
  Icon(Icons.cake, size: textSize),
];

final List<String> shirtSizes = [
  "XS",
  "S",
  "M",
  "L",
  "XL",
  "XXL",
];

final List<String> manDays = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "9+",
];