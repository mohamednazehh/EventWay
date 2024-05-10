// ignore: 
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/Search.dart';
import '../widgets/events_widgets.dart';
import '../widgets/titel_screen.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  String eventName;
   Categories({required this.eventName,super.key});
  TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
                const Titel(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Explore and book all exclusive events",
              style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
              ),
              ),
                  ],
                ),
                Search(search:search),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: 1.h,
                    horizontal: 5.w
                  ),
                  child: Text(eventName,style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color:Colors.white,
                  ),),
                ),
              SizedBox(
                height: 1.h,
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
        )
        ,
    );
  }
}