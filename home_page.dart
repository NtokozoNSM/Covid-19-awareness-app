import 'package:covid_awareness/pages/self_check.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:covid_awareness/pages/affected_regions.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    //var screenWidthP = MediaQuery.of(context).devicePixelRatio * MediaQuery.of(context).size.width;
    //var screenHeightP = MediaQuery.of(context).devicePixelRatio * MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    //var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFB3EEFE),
      body: Container(
        height: 100.h,
        width: 100.w,
        //color: Colors.blue,
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                
                  SizedBox(width: 87.w),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                //SizedBox(width: screenWidth),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.amber,
                    ),
                  height: 15.h,
                  width: 15.h,
                  child: Lottie.asset('assets/corona_main.json', fit: BoxFit.fill),),],
            ),
            
            Center(
               child: Text(
                   "Covid 19 Awareness",
                   style: TextStyle(
                     fontSize: 13.sp,
                     color: const Color.fromARGB(255, 66, 66, 66),
                     fontWeight: FontWeight.bold,
                   ),),
            ),
            SizedBox(height: 2.h),

            Container(
                  height: 20.h,
                  width: 90.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: const Color(0xFFFEFAC8),
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                
                   Container(
                  child: Lottie.asset('assets/sick_person.json'),
                  
                  ),
                  
                  Column(
                    children: [
                      SizedBox(height: 2.h,),
                      const Text('Are you feeling sick?'),
                      SizedBox(height: 4.h,),
                      ElevatedButton(
                        child: const Text("Self-Test"),
                        onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SelfCheck()),
                          );
                        }, 
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            padding: EdgeInsets.all(2.5.h),
                          
                        )
                        ),
                    ],
                  )
                
                          ],
            ),),
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 5, bottom: 5),
                //color: Colors.amber,
                //width: screenWidthP * 0.20,
                child: Text('Safety precautions',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 66, 66, 66),
                ),),
              ),
            ],),
            //SizedBox(height: 0..h,),
            //Safety precautions row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //color: Colors.amber,
                  child: Lottie.asset('assets/wash_hands.json'),
                  height: 10.h,
                  width: 10.h,

                ),
                SizedBox(width: 2.w),
                Container(
                  //color: Colors.green,
                  child: Lottie.asset('assets/use_mask.json'),
                  height: 10.h,
                  width: 10.h,

                ),
                SizedBox(width: 2.w),
                Container(
                  //color: Colors.purple,
                  child: Lottie.asset('assets/avoid_handshakes.json'),
                  height: 10.h,
                  width: 10.h,

                ),
                SizedBox(width: 2.w),
                Container(
                  //color: Colors.brown,
                  child: Lottie.asset('assets/no_face_touching.json'),
                  height: 10.h,
                  width: 10.h,
                ),
              ],
            ),
            SizedBox(height: 0.4.h,),
             Container(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                //color: Colors.amber,
                //width: screenWidthP * 0.20,
                child: Text('Get Vaccinated',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 54, 163, 39),
                ),),
              ),
               Container(
                  color: Colors.green,
                  child: const Icon(Icons.add),
                  height: 3.h,
                  width: 3.h,
                ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Text('Affected regions',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color.fromARGB(255, 233, 36, 36),
                ),),),],
              ),
              Center(
                  child: Container(
                    
                    // decoration: const BoxDecoration(
                    
                    //   borderRadius: BorderRadius.all(Radius.circular(30)),
                    //   color: Colors.lightBlue
                    // ),
                  //padding: const EdgeInsets.all(10),
                   
                  //color: Color.fromARGB(255, 172, 184, 172),
                  child: Lottie.asset('assets/world_wide.json', fit: BoxFit.fill),
                  height: 40.w,
                  width: 35.h,
                ),),
          ]
        ),
    ),);
  }
}