import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/gen/assets.gen.dart';
import 'package:monkey/generated/locale_keys.g.dart';
import 'package:monkey/screens/login/login.dart';
import 'package:monkey/screens/signup/signup.dart';

class AfterSplashScreen extends StatelessWidget{
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 430.h,
              child: Stack(
                children: [
                  Image.asset(Assets.images.onboarding.organeTopShape.path,height: 330.h,fit: BoxFit.fill,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(Assets.images.onboarding.logo.path,
                    height: 165.h,
                    width: 218.w,
                    ))
                ],
              ),
            ),
            SizedBox(height: 30.h,),
             Text(LocaleKeys.aftersplashdis.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13,color: Color(0xff7C7D7E)),
            ),
            SizedBox(height: 30.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()),);
            },child:  Text(LocaleKeys.login.tr()),),
            ),
            SizedBox(height: 20.h,),

            Padding(padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: OutlinedButton(onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> const SignUpScreen()));
            },child:  Text(LocaleKeys.createanaccount.tr()),),
            ),
            SizedBox(height: 20.h,),

          ],
        ),
      ),
    );
  }

}