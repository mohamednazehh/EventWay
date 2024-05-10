import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/main_buttom.dart';
import '../../widgets/types.dart';
import 'Login_screen.dart';
import 'Signup.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        alignment: Alignment.topRight,
        child: Image.asset("assets/images/top_right_background.png"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        child: Row(
          children: [
            Image.asset("assets/images/main_logo.png"),
            const SizedBox(
              width: 5,
            ),
            Image.asset("assets/images/Eventsway.png"),
          ],
        ),
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
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(width: double.infinity),
              const Text(
                "Booking",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
              ),
              const Text(
                "Tickets Online for Events",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Text(
                  "Types",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Types(
                      image: "business", type: "Business", isInHomepage: false),
                  Types(image: "gaming", type: "Gaming", isInHomepage: false),
                  Types(image: "concert", type: "Concert", isInHomepage: false),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Text(
                  "Happy for joining us",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: const Text(
                  "Let's go to see new events",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Mainbottom(
                    name: "Login",
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      ),
                  child: Mainbottom(name: "Sign Up")),
            ],
          ),
        ),
      ),
    ]));
  }
}
