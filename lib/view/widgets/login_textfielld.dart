import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/colors.dart';
// ignore: must_be_immutable
class TextFieldAuth extends StatefulWidget {
  TextEditingController controller=TextEditingController();
  String hint;
  IconData icon;
  bool ispasword;
   // ignore: use_key_in_widget_constructors
   TextFieldAuth({required this.controller,required this.hint,required this.icon,required this.ispasword});

  @override
  State<TextFieldAuth> createState() => _TextFieldAuthState();
}

class _TextFieldAuthState extends State<TextFieldAuth> {
  bool? obscureText=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText!,
          obscuringCharacter: "*",
          
  style: const TextStyle(
    color: Colors.white, // set the color of the obscured text
  ),
        decoration: InputDecoration(
          hintText: widget.hint,
          hintMaxLines: 1,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Icon(widget.icon,color: ColorsApp.mainColor,),
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
    suffix: widget.ispasword?GestureDetector(
      onTap: () => setState(() {
        obscureText=!obscureText!;
      }),
      child: Icon(
        obscureText!?
        Icons.visibility:Icons.visibility_off,
        color: ColorsApp.mainColor,
      ),
    ):null,    
        ),
      ),
    );
  }
}