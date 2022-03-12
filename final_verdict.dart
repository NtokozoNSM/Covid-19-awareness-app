import 'package:covid_awareness/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class Verdict extends StatefulWidget {
  const Verdict({ Key? key }) : super(key: key);

  @override
  _VerdictPageState createState() => _VerdictPageState();
}

class _VerdictPageState extends State <Verdict> {
  final CounterController counterController = Get.put(CounterController());
  
  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
        title: "Self-Test",
        home: Scaffold(
          backgroundColor: const Color(0xFFFEFAC8),
          body: Container(
            height: 100.h,
            width: 100.w,
            padding: const EdgeInsets.only(top: 40, left: 1, right: 1,),
            child: Column(
          children: [
            Row(
              children: [
                
                  SizedBox(width: 90.w),
                InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/options_icon.png'), 
                      height: 1.5.h, 
                      width: 1.5.h,
                      fit: BoxFit.fill,),
                  ),
                ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.amber,
                    ),
                  height: 15.h,
                  width: 15.h,
                  child: Lottie.asset('assets/sick_person.json', fit: BoxFit.fill),),

                  

              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("There is ",
                style: TextStyle(
                  fontSize: 15.sp,
                ),),
                Obx(
                      () => Text(

                      counterController.count.toString() + "%",
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.indigo,
                      ),
                    ),),
                Text(" chance",
                style: TextStyle(
                  fontSize: 15.sp,
                ),),
                  
              ],
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("that you might be having Covid 19.",
                style: TextStyle(
                  fontSize: 15.sp,
                ),)
              ],
            ),
          SizedBox(height: 7.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Available Doctors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),),
                SizedBox(width: 25.w,),
                Text("View All",
                style: TextStyle(
                  fontSize: 12.sp),),
                ElevatedButton(onPressed: () {}, 
                child: Container(
                  height: 0.5.h,
                  //width: 0.5.w,
                  child: Image.asset('assets/arrow.png'),),),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  Container(
                    child: Image.asset('assets/'),),
                ),
              ],
            ),
            
            ],),
          ),
        ),);
   }
}