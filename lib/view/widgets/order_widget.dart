import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/colors.dart';
// ignore: must_be_immutable
class OrderWidget extends StatelessWidget {
  String imageurl;
  String eventName;
  String ticketType;
  OrderWidget(
      {super.key,
      required this.imageurl,
      required this.eventName,
      required this.ticketType});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 40.w,
                child: CachedNetworkImage(
                        imageUrl: 'https://egyptianstreets.com/wp-content/uploads/2018/09/insomniacosplay2.jpg',
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
              ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 2.w
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ticketType,
                    style: TextStyle(
                        color: const Color.fromARGB(139, 255, 255, 255),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Text(
                        "More Details",
                        style: TextStyle(
                            color: ColorsApp.mainColor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
