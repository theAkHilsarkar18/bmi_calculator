import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {Get.toNamed('/home'); });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E2022),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Icon(Icons.health_and_safety_outlined,color: Colors.redAccent,size: 60.sp,),
              SizedBox(height: 50.sp,),
              Text("Body Mass Index",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Color(0xffF0F5F9),letterSpacing: 1),),
              Spacer(),
              Text("Check youe BMI",style: GoogleFonts.poppins(fontSize: 15.sp,color: Color(0xffF0F5F9),letterSpacing: 1),),
              SizedBox(height: 20.sp,),
            ],
          ),
        ),
      ),
    );
  }
}
