import 'dart:developer';
import 'package:covid_awareness/pages/counter.dart';
import 'package:covid_awareness/pages/counter.dart';
import 'package:covid_awareness/pages/final_verdict.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SelfCheck extends StatefulWidget {
  const SelfCheck({Key? key}) : super(key: key);

  @override
  _SelfCheckPageState createState() => _SelfCheckPageState();
}

class _SelfCheckPageState extends State <SelfCheck> {
  final CounterController counterController = Get.put(CounterController());
  
  @override
   Widget build(BuildContext context) {
    //return Sizer(builder: (context, orientation, deviceType)
    //{
      return MaterialApp(
         debugShowCheckedModeBanner: false,
        title: "Self-Test",
        home: Scaffold(
        backgroundColor: const Color(0xFFFEFAC8),
      body: Container(
        height: 100.h,
        width: 100.w,
        //color: Colors.blue,
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

                  Center(
                    child: Obx(
                      () => Text(
                      counterController.count.toString() + "%",
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),),
                  )

              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
               child: Text(
                   "Covid 19 symptoms may appear 2 - 14 days\n after exposure to the virus",
                   style: TextStyle(
                     fontSize: 10.sp,
                     color: const Color.fromARGB(255, 66, 66, 66),
                     fontWeight: FontWeight.bold,
                   ),),
            ),
              ],),
            SizedBox(height: 3.h,),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  SizedBox(height: 1.h,),
                  Text(
                   "Select your symptoms",
                   style: TextStyle(
                     fontSize: 12.sp,
                     color: const Color.fromARGB(255, 66, 66, 66),
                     fontWeight: FontWeight.bold,
                   ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      GestureDetector(
                        onTap:(){
                          //Get.find<DataClass>().incrementX();
                          counterController.incrementSoreThroat();
                        },


                      child: Container(
                        child: Lottie.asset('assets/sore_throat.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),),

                      GestureDetector(
                        onTap: () {
                          counterController.incrementBreathShortness();
                        },
                        child: Container(
                        child: Lottie.asset('assets/shortness_of_breath.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ), 
                      ),

                      GestureDetector(
                        onTap: () {
                          counterController.incrementHeadache();
                        },
                        child: Container(
                        child: Lottie.asset('assets/headache.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),
                      
                      
                      
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          counterController.incrementFatigue();
                        },
                        child: Container(
                        child: Lottie.asset('assets/fatigue.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),

                      GestureDetector(
                        onTap: () {
                          counterController.incrementFever();
                        },
                        child: Container(
                        child: Lottie.asset('assets/fever.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),
                      
                      GestureDetector(
                        onTap: () {
                          counterController.incrementDryCough();
                        },
                        child: Container(
                        child: Lottie.asset('assets/dry_cough.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          counterController.incrementDiarrhea();
                        },
                        child: Container(
                        child: Lottie.asset('assets/diarrhea.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),
                      
                      GestureDetector(
                        onTap: () {
                          counterController.incrementHemoptysis();
                        },
                        child: Container(
                        child: Lottie.asset('assets/hemoptysis.json', fit: BoxFit.fill),
                        height: 15.h,
                        width: 15.h,
                      ),
                      ),
                     
                    ],
                  ),
                 
                ],
              ),
            ),
             ElevatedButton(
                        child: const Text("Proceed"),
                        onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Verdict()),
                          );
                        }, 
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            padding: EdgeInsets.all(3.w),
                        ),
                ),
            ],
            ),
      ),),);
   }}