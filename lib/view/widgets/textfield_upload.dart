import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/colors.dart';

// ignore: must_be_immutable
class TFUload extends StatelessWidget {
  TextEditingController controller=TextEditingController();
  String hint;
   TFUload({super.key, required this.controller,
   required this.hint
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 5.w
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintMaxLines: 1,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
           border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: ColorsApp.mainColor,
            width: 1.0,
          ),
        ),
            enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: ColorsApp.mainColor,
          width: 1.0,
        ),
      ),
       focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: ColorsApp.mainColor,
          width: 1.0,
        ),
      ),
      
        ),
          style: const TextStyle(
    color: Colors.white, // set the color of the obscured text
  ),
      ),
    );
  }
}