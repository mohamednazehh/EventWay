import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../screens/Categories.dart';

// ignore: must_be_immutable
class Types extends StatelessWidget {
  String image;
  String type;
  bool isInHomepage;
   // ignore: use_key_in_widget_constructors
   Types({required this.image,required this.type,required this.isInHomepage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isInHomepage?Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Categories(eventName: type,)),
                      ):null;
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 5.w,
        ),
        child: Column(
          
          children: [
            Image.asset("assets/images/$image.png",
            width: 20.w,
            ),
              const SizedBox(height: 5,),
              Text(type,style:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
          ],
        ),
      ),
    );
  }
}