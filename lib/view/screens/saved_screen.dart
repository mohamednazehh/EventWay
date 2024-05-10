import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/events_widgets.dart';
import '../widgets/titel_screen.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
         children: [
          const Titel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Saved",style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600
              ),)
            ],
          ),
          for(int i=0;i<20;i++)
             EventsWidget(
                imageUrl:
                    "https://egyptianstreets.com/wp-content/uploads/2018/09/insomniacosplay2.jpg",
                date: "11 Nov 2020 - 19:00",
                eventName: "Insomnia Egypt",
                location: "cairo",
                price: "1200",
              ),
         ],
      ),
    );
  }
}