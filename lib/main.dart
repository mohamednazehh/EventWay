import 'package:eventsway/view/screens/onbording.dart';
import 'package:eventsway/view/themes/app_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) { 
        return MaterialApp(
          debugShowCheckedModeBanner: false,
        title: 'Event Way',
        theme: Themes.lightTheme,
        home:   const OnBording(),
      );
       }, 
    );
  }
}
