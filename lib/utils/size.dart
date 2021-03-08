
import 'package:flutter/material.dart';

double wp(BuildContext context,double size){
  double width = MediaQuery.of(context).size.width;
  return (size/100) * width;
}

double hp(BuildContext context,double size){
  double height = MediaQuery.of(context).size.height;
  return (size/100) * height;
}


