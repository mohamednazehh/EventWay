// ignore:
// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../themes/colors.dart';
import '../../widgets/google_buttom.dart';
import '../../widgets/login_textfielld.dart';
import '../../widgets/main_buttom.dart';
import 'Login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController fullName = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
bool agree = false;

class _SignUpState extends State<SignUp> {
  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
    // ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
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
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                TextFieldAuth(
                  controller: fullName,
                  hint: "Full Name",
                  icon: Icons.person,
                  ispasword: false,
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
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                      Checkbox(
                        value: agree,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorsApp
                                  .mainColor), // Change border color here
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.white,
                        side: BorderSide(
                          color: ColorsApp.mainColor,
                          width: 1.5,
                        ),
                        checkColor: ColorsApp.mainColor,
                        onChanged: (value) {
                          agree = value!;

                          setState(() {});
                        },
                      ),
                      Text(
                        "I agree to all Terms & conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 13.sp,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: GestureDetector(
                      onTap: () {
                        signup();
                      },
                      child: Mainbottom(name: "Sign Up")),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                  child: Row(
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
                            "Or continue with",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w800,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),

                        Expanded(
                            child: Divider(
                          color: ColorsApp.mainColor,
                          thickness: 1,
                        )),
                      ]),
                ),
                const Googlebutton(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have accont? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                            overflow: TextOverflow.ellipsis),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: ColorsApp.mainColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
