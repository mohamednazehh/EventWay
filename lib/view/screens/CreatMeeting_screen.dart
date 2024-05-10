// ignore: 
// ignore_for_file: file_names, must_be_immutable

import 'package:eventsway/view/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class CreatMeeting extends StatelessWidget {
   CreatMeeting({super.key});
String meetLink = "https://meet.google.com/"; // Replace with your own Google Meet link

// Function to launch the Google Meet link
void _launchMeetLink() async {
  // ignore: deprecated_member_use
  if (await canLaunch(meetLink)) {
    // ignore: deprecated_member_use
    await launch(meetLink);
  } else {
    throw 'Could not launch $meetLink';
  }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text("Join Google Meet",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          ),
          GestureDetector(
            onTap: () {
              _launchMeetLink();
            },
            child: Container(
              width: 50.w,
              height: 5.h,
              decoration: BoxDecoration(color: ColorsApp.mainColor),
              child: Center(
                child: Text("Join",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
              fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}