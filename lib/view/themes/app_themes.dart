import 'package:flutter/material.dart';

import 'colors.dart';

class Themes{
 static ThemeData lightTheme =ThemeData(
     colorScheme:  ColorScheme.light(
      primary:ColorsApp.mainColor,
    ),
         scaffoldBackgroundColor: Colors.black,
         canvasColor: Colors.black,
    );
}