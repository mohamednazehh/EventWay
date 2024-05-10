import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../themes/colors.dart';
// ignore: must_be_immutable
class EventsWidget extends StatefulWidget {
  String imageUrl;
  String eventName;
  String date;
  String location;
  String price;
  EventsWidget(
      {super.key,
      required this.imageUrl,
      required this.eventName,
      required this.date,
      required this.location,
      required this.price});

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      child: Stack(
        
        children: [ Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40.w,
                child: CachedNetworkImage(
                        imageUrl: widget.imageUrl,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.eventName,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: ColorsApp.mainColor,
                        ),
                        Text(
                          widget.date,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                 Icon(Icons.location_on,
                                color: ColorsApp.mainColor,
                                ),
                                Text(
                                  widget.location,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                 Icon(Icons.attach_money,
                                color: ColorsApp.mainColor,
                                ),
                                Text(
                                  "price",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                 
                              ],
                            ),
                            
                          ],
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                                        Container(
                        width: 17.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                  color: ColorsApp.mainColor,
                  borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(widget.price,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                              )),
                        ),
                      ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            child:                         GestureDetector(
                          onTap: () {
                            setState(() {
                              saved=!saved;
                            });
                          },
                          child: Icon(
                            saved ? Icons.bookmark : Icons.bookmark_border,
                            color: ColorsApp.mainColor,
                            size: 23.sp,
                          ),
                        ),
          ),
        ]
      ),
    );
  }
}
