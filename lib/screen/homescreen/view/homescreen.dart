import 'package:bmi_calculator/screen/homescreen/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

Homecontroller homecontroller = Get.put(Homecontroller());

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E2022),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1E2022),
          title: Text("Body Mass Index",
              style: GoogleFonts.poppins(color: Color(0xffC9D6DF))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.refresh,
                color: Color(
                  0xffC9D6DF,
                ),
                size: 28,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // male female row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                maleFemale(
                  'MALE',
                  Icon(
                    Icons.male,
                    color: Color(0xffC9D6DF),
                    size: 60.sp,
                  ),
                ),
                maleFemale(
                  'FEMALE',
                  Icon(Icons.female, color: Color(0xffC9D6DF), size: 60.sp),
                ),
              ],
            ),

            // height slider container
            heightContainer(),
          ],
        ),
      ),
    );
  }

  // male female container smart widget
  Container maleFemale(String gender, Icon i1) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 16.h,
      width: 43.w,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          i1,
          Text("$gender",
              style: GoogleFonts.poppins(
                letterSpacing: 1,
                  color: Color(0xffC9D6DF), fontSize: 15.sp)),
        ],
      ),
    );
  }

  // height container with slider

  Container heightContainer() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 20.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'HEIGHT',
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: Color(0xffC9D6DF),
              letterSpacing: 1
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${homecontroller.sliderValue.toInt()}",
                  style: GoogleFonts.poppins(
                    color: Color(0xffC9D6DF),
                    fontSize: 35.sp,
                  ),
                ),
              ),
              Text(
                ' cm',
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: Color(0xffC9D6DF),
                ),
              ),
            ],
          ),
          Obx(
            () => Slider(
              max: 300,
              min: 50,
              activeColor: Colors.redAccent,
              inactiveColor: Color(0xffC9D6DF),
              value: homecontroller.sliderValue.value,
              onChanged: (value) {
                homecontroller.sliderValueOnChanged(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
