// ignore_for_file: file_names
import 'package:eventsway/view/screens/auth/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/bottom_nav_bar.dart';
import '../../themes/colors.dart';
import '../../widgets/google_buttom.dart';
import '../../widgets/login_textfielld.dart';
import '../../widgets/main_buttom.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
    // ignore: unnecessary_null_comparison
    if (FirebaseAuth.instance.authStateChanges()!=null) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) =>  mainScreen()),
          (route) => false);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) =>  const SignUp()),
          (route) => false);
    }
  }
    return Scaffold(
      body: Stack(children: [
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Column(
                    children: [
                      Image.asset("assets/images/main_logo.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset("assets/images/Eventsway.png")
                    ],
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                TextFieldAuth(
                  controller: email,
                  hint: "Email adderss",
                  icon: Icons.mail_outline,
                  ispasword: false,
                ),
                TextFieldAuth(
                  controller: password,
                  hint: "Password",
                  icon: Icons.lock,
                  ispasword: true,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: GestureDetector(
                      onTap: () {
                       signIn();
                      },
                      child: Mainbottom(name: "Login")),
                ),
                Text(
                  "Forget Password?",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                          child: Divider(
                        color: ColorsApp.mainColor,
                        thickness: 1,
                      )),

                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Or ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800),
                        ),
                      ),

                      Expanded(
                          child: Divider(
                        color: ColorsApp.mainColor,
                        thickness: 1,
                      )),
                    ]),
                const Googlebutton(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have any accont? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainScreen()),
                          );
                        },
                        child: Text(
                          "Sign Up ",
                          style: TextStyle(
                            color: ColorsApp.mainColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
