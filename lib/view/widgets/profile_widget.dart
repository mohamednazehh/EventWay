// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../themes/colors.dart';

class ProfileWidget extends StatelessWidget {
  String pathImage;
  String name;
  String type;
  ProfileWidget({required this.pathImage, required this.name, super.key,
  required this.type,
  });

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
          Row(
            children: [
              Text("1000",
              style: TextStyle(
                color: ColorsApp.mainColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
              ),
              Text(type,
              style: TextStyle(
                color: ColorsApp.mainColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
              ),
                        const SizedBox(
            width: 5,
          )
            ],
          ),

        ],
      ),
    );
  }
}
