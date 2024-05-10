// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../themes/colors.dart';

// ignore: must_be_immutable
class Mainbottom extends StatelessWidget {
  String name;
  // ignore: prefer_function_declarations_over_variables
   Mainbottom(
    
    {  required  this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
      child: Container(
        width: 100.w,
        height: 5.h,
        decoration: BoxDecoration(color: ColorsApp.mainColor,
        borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: Text(name,style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),)),
      ),
    );
  }
}