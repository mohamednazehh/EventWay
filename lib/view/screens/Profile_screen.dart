// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/profile_widget.dart';
import '../widgets/profile_widget2.dart';
import 'create_event.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});
final String facebookUrl="https://www.facebook.com/profile.php?id=100091343949531";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).padding.top,
        ),
        child: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:EdgeInsets.symmetric(
                      horizontal: 5.w,
                      vertical: 1.h
                    ),
                    child: CachedNetworkImage(
                      width: 15.w,
                      imageUrl:
                          'https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/333801304_885253655860237_4919000852650201544_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHoDLBrYHB5bgdIZuPYQ-0HKQZ6Cb1WI3YpBnoJvVYjdmovlP-g2cW7Vz5K7TTM3QJJEtg3Q5reqRclyeicbrOE&_nc_ohc=rxtKLHgBI4IAX-qR_u-&_nc_ht=scontent.fcai20-4.fna&oh=00_AfCxx12GZlkFj5IQwS8Sgz2K-q572BKl1oDhN9jo59BZQA&oe=6425FDC1',
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  Text("Moaz elkhoulify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ),
                ],
              ),
              ProfileWidget(pathImage:"wallet",name: "Account Balance",type: "Egp",),
              ProfileWidget(pathImage:"ticket",name: "Number of Orders",type: "Orders",),
              Profile2(pathImage: "coupon",name: "Giftcard",),
              Profile2(pathImage: "user",name: "Edit Profile",),
              GestureDetector(
                onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const CreateEvent()),
              (Route<dynamic> route) => false);
                },
                child: Profile2(pathImage: "page",name: "Create event",)),
              Profile2(pathImage: "shield",name: "Terms of Service",),
              Profile2(pathImage: "privacy",name: "Privacy Poliicy",),
              Profile2(pathImage: "star",name: "Rate this app",),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "follow us",
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          
        // ignore: deprecated_member_use
        if (await canLaunch(facebookUrl)) {
          // ignore: deprecated_member_use
          await launch(facebookUrl);
        } else {
          throw 'Could not launch $facebookUrl';
      }
                        },
                        child: Image.asset("assets/icons/facebook.png",
                        width: 10.w,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
