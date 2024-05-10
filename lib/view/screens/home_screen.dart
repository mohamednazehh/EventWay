import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/Search.dart';
import '../widgets/events_widgets.dart';
import '../widgets/titel_screen.dart';
import '../widgets/types.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
  TextEditingController search=TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var data;
class _HomeScreenState extends State<HomeScreen> {
    final CollectionReference events = FirebaseFirestore.instance.collection('events');
    List eventdata=[];
    void getData() async {
var responsebody=await events.get();
// ignore: avoid_function_literals_in_foreach_calls
responsebody.docs.forEach((element) {
  setState(() {
      eventdata.add(element.data());
  });

});
}
  @override
void initState() {
getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(
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
                    vertical: 1.h
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Categories",style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),),
                    ],
                  ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Types(image: "business",type:  "Business",isInHomepage: true),
                  Types(image: "gaming",type:  "Gaming",isInHomepage: true),
                  Types(image: "concert",type:  "Concert",isInHomepage: true),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
            for(int i=0;i<eventdata.length;i++)
             EventsWidget(
                imageUrl:
                    "${eventdata[i]['url']}",
                date: "${eventdata[i]['date']}",
                eventName: "${eventdata[i]['Event Name']}",
                location: "${eventdata[i]['place']}",
                price: "${eventdata[i]['price']}",
              ),
              
          ],
        )
        ,
        );
  }
}
