import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class OnbordingThried extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const OnbordingThried();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/top_right_background.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/right_bottom_background.png"),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/images/left_bottom_background.png"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/main_logo.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/Eventsway.png"),
                  ],
                ),
                 
                Padding(
                  padding:  EdgeInsets.only(
                    top: 7.h
                  ),
                  child: SizedBox(
                    width: 70.w,
                    child: Image.asset("assets/images/onbording/thired.png"),
                  ),
                ),
               
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "We will bring happiness to users with",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ),
                    Text(
                      "the best events.Trust us that all events",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ),
                    Text(
                      "will be organized very well.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ),
                    
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
