import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../themes/colors.dart';
import '../widgets/main_buttom.dart';
import 'auth/Login_screen.dart';
import 'auth/frist_screen.dart';
import 'onbording/frist.dart';
import 'onbording/second.dart';
import 'onbording/thried.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  final PageController _controller = PageController();

  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            onlastpage = (index == 2);
          });
        },
        children: const [
          OnbordingFirst(),
          OnbordingSecond(),
          OnbordingThried(),
        ],
      ),
      Container(
          alignment: const Alignment(0, -0.7),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                width: 15.w,
                height: 1.5.h,
                color: ColorsApp.mainColor,
                borderRadius: BorderRadius.circular(15),
                verticalOffset: 0,
              ),
              dotDecoration: DotDecoration(
                width: 15.w,
                height: 1.5.h,
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
                dotBorder: DotBorder(
                  color: ColorsApp.mainColor,
                ),
                verticalOffset: 0,
              ),
              spacing: 7.w,
            ),
          )),
      GestureDetector(
        onTap: () {
          onlastpage?
          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) =>  const LoginScreen()),
):
          _controller.nextPage(
              duration: const Duration(milliseconds: 4), curve: Curves.easeIn);
        },
        child: onlastpage
            ? Container(
                alignment: const Alignment(0, 0.75),
                child: GestureDetector(
                  onTap: () =>          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) =>  const FirstScreen()),
) ,
                  child: Mainbottom(name: "Get start")))
            : Container(
                alignment: const Alignment(0, 0.75),
                child: Mainbottom(name: "Next")),
      )
    ]));
  }
}
