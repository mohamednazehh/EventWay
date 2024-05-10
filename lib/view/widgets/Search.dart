// ignore: 
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// ignore: must_be_immutable
class Search extends StatelessWidget {
  TextEditingController search=TextEditingController();
   Search({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w,
      vertical: 1.h
      ),
      child: TextFormField(
        controller: search,
        decoration: InputDecoration(
          filled: true,
      fillColor: Colors.white,
          hintText:"Search events, films and more..." ,
          hintStyle: TextStyle(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
          suffixIcon: const Icon(Icons.search,)
             ),
      ),
    );
  }
}