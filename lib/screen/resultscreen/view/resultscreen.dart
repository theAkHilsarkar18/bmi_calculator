import 'package:bmi_calculator/screen/homescreen/controller/homecontroller.dart';
import 'package:bmi_calculator/screen/homescreen/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Resultscreen extends StatefulWidget {
  const Resultscreen({Key? key}) : super(key: key);

  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {

  Homecontroller homecontroller = Get.put(Homecontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E2022),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1E2022),
          title: Text(
            "Body Mass Index",
            style: GoogleFonts.poppins(
              color: Color(0xffC9D6DF),
            ),
          ),
          centerTitle: false,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('RESULT WEIGHT',style: GoogleFonts.poppins(letterSpacing: 1,color: Colors.green,fontSize: 20.sp,),),
              Obx(() =>  Text('${homecontroller.bmiResult.value.toStringAsPrecision(3)}',style: GoogleFonts.poppins(letterSpacing: 1,color: Color(0xffF0F5F9),fontSize: 50.sp,fontWeight: FontWeight.w500))),
              Text('You have a normal body weight Good Job',style: GoogleFonts.poppins(letterSpacing: 1,color: Color(0xffC9D6DF),fontSize: 18.sp,),textAlign: TextAlign.center),
              InkWell(onTap: () {
                Get.back();
              },child: reCalculateButton(),),
            ],
          ),
        ),
      ),
    );
  }
  Container reCalculateButton()
  {
    return Container(
      height: 8.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.redAccent,
      alignment: Alignment.center,
      child: Text('RE-CALCULATE',style: GoogleFonts.poppins(color: Color(0xffF0F5F9),fontSize: 18.sp,fontWeight: FontWeight.w500,letterSpacing: 1)),
    );
  }
}
