import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/screens/aftersplashscreen/aftersplash.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget{
 const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), (){
      Navigator.push(
        context,
         MaterialPageRoute(builder: (context)=> const AfterSplashScreen()));

    });
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        
        width: 375.w,
        height: 812.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.images.onboarding.bg.path))
        ),
        child: Image.asset(Assets.images.onboarding.logo.path,width: 180.w,height: 120.h,),
      ),

    );
  }
}