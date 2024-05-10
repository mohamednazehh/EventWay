import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/order_widget.dart';

class OrdersScreen extends StatefulWidget {
   const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 1.w
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 5.w
          ),
          child: ListView(
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
                               
                                 Text("  3 order",
                                   style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                 ),
                                 for(int i=0;i<3;i++)
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     OrderWidget(imageurl: "https://egyptianstreets.com/wp-content/uploads/2018/09/insomniacosplay2.jpg",
                                     eventName: "insomia",
                                     ticketType: "Regular ticket",
                                     ),
                                   ],
                                 )
            ],
          ),
        ),
      ),
    );
  }
}