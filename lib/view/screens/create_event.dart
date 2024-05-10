// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../themes/colors.dart';
import '../widgets/main_buttom.dart';
import '../widgets/textfield_upload.dart';
class CreateEvent extends StatefulWidget {
   const CreateEvent({super.key});
  @override
  State<CreateEvent> createState() => _CreateEventState();
}
TextEditingController eventName=TextEditingController();
TextEditingController price=TextEditingController();
TextEditingController place=TextEditingController();
TextEditingController date=TextEditingController();
TextEditingController categorie=TextEditingController();
class _CreateEventState extends State<CreateEvent> {
      File? file;
  String? url;
  void getimage() async {
    // ignore: deprecated_member_use, unused_local_variable
    final imageFarm = await ImagePicker().getImage(source: ImageSource.gallery);
    file = File(imageFarm!.path);
    var nameimage = basename(imageFarm.path);
    var refstorge = FirebaseStorage.instance.ref("images/$nameimage");

    await refstorge.putFile(file!);
    url = await refstorge.getDownloadURL();
    setState(() {
      
    });
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
                    Container(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/top_right_background.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/right_bottom_background.png"),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/images/left_bottom_background.png"),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).viewPadding.top,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical: 1.h
                    ),
                    child: Text("Create your Event",
                    style: TextStyle(
                      color: ColorsApp.mainColor,
                      fontSize: 18.sp,
                      fontWeight:FontWeight.w600, 
                    ),
                    ),
                  ),
                TFUload(controller:eventName ,hint: "Event Name",),
                TFUload(controller:categorie ,hint: "categorie",),
                TFUload(controller:place ,hint: "place",),
                TFUload(controller:price,hint: "price",),
                TFUload(controller:date ,hint: "date",),
                GestureDetector(
                  onTap: () {
                    getimage();
                  },
                  child: Container(
                    width: 50.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: ColorsApp.mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text("upload image",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Map<String, String> datatosave = {
                        "Event Name":eventName.text.trim(),
                        "price":price.text.trim(),
                        "place":place.text.trim(),
                        "date":date.text.trim(),
                        "categorie":categorie.text.trim(),
                        "url":"$url",
                      };
                      setState(() {
                        FirebaseFirestore.instance
                            .collection("events")
                            .add(datatosave);
                      });
                  },
                  child: Mainbottom(name: "Add Event")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}