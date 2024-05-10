import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../controller/bottom_nav_bar.dart';
import '../../services/auth_services.dart';
import '../screens/auth/frist_screen.dart';
import '../themes/colors.dart';

class Googlebutton extends StatelessWidget {
  const Googlebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        UserCredential? user = await AuthScrevice().signInWithGoogle();
        // ignore: unnecessary_null_comparison
        if (user != null) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => mainScreen()),
              (Route<dynamic> route) => false);
        } else {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const FirstScreen()),
              (Route<dynamic> route) => false);
        }
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 5.w      ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorsApp.mainColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Image.asset("assets/images/google.png"),
              ),
              Text(
                "Login with Google",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
