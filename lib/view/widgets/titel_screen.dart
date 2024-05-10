import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/colors.dart';

class Titel extends StatelessWidget {
  const Titel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
                       children: [
                       Image.asset("assets/images/main_logo.png"),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset("assets/images/Eventsway.png")
                       ],
                             ),
                             Column(
                              children: [
                                Image.asset("assets/images/hot-deal.png"),
                                 Text("Rewards",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorsApp.mainColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                              )
                              ],
                             )
        ],
      ),
    );
  }
}