import 'package:flutter/material.dart';

import '../view/screens/CreatMeeting_screen.dart';
import '../view/screens/Profile_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/orders.dart';
import '../view/screens/saved_screen.dart';
import '../view/themes/colors.dart';
// ignore: camel_case_types, must_be_immutable
class mainScreen extends StatefulWidget {
  mainScreen({super.key});
  int selectedIndex = 0;
  @override
  State<mainScreen> createState() => _mainScreenState();
}

List screens =  [
  const HomeScreen(),
  const Saved(),
  const OrdersScreen(),
  CreatMeeting(),
  const Profile(),
];

// ignore: camel_case_types
class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: ColorsApp.mainColor,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
            unselectedItemColor: ColorsApp.mainColor,
            selectedLabelStyle: TextStyle(color: ColorsApp.mainColor),
            currentIndex: widget.selectedIndex,
            onTap: (index) {
              setState(() {
                widget.selectedIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                    Icons.home_outlined,
                  )),
              const BottomNavigationBarItem(
                  label: "Saved",
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                  )),
              BottomNavigationBarItem(
                  label: "Orders",
                  icon: 
                  ImageIcon(
     const AssetImage("assets/icons/ticket.png"),
     color: ColorsApp.mainColor,
),
                  ),
              const BottomNavigationBarItem(
                  label: "Meeting",
                  icon: Icon(
                    Icons.groups_3,
                  )),
              const BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(
                    Icons.add_a_photo_rounded,
                  ))
            ]),
      ),
      body: screens.elementAt(widget.selectedIndex),
    );
  }
}
