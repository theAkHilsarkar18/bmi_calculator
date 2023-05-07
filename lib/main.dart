import 'package:bmi_calculator/screen/homescreen/view/homescreen.dart';
import 'package:bmi_calculator/screen/resultscreen/view/resultscreen.dart';
import 'package:bmi_calculator/screen/spleshscreen/view/spleshscreen.dart';
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
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/',page: () => Spleshscreen(),transition: Transition.leftToRight),
          GetPage(name: '/home',page: () => Homescreen(),transition: Transition.leftToRight),
          GetPage(name: '/result',page: () => Resultscreen(),transition: Transition.leftToRight),
        ],
      ),
    ),
  );
}