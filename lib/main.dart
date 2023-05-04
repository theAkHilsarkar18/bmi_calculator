import 'package:bmi_calculator/screen/homescreen/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) =>
      GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: true,
        routes: {
         '/' : (p0) => Homescreen(),
        },
      ),
    ),
  );
}