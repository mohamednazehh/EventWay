import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class Profile2 extends StatelessWidget {
    String pathImage;
  String name;
   Profile2({
    required this.pathImage,
    required this.name,
    super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(128, 255, 255, 255)),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.h
                ),
                child: Image.asset("assets/icons/$pathImage.png"),
              ),
                        Text(name,
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
          ),
            ],
          ),
// ignore: prefer_const_constructors
Icon(Icons.keyboard_arrow_right_outlined),
        ],
      ),
    );
  }
}