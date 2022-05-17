import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/generated/locale_keys.g.dart';

import '../login/login.dart';


class SignUpScreen extends StatelessWidget{
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding:
              const EdgeInsetsDirectional.only(top: 40, start: 34, end: 34, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                LocaleKeys.signup.tr(),
                style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color(0xff4A4B4D),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                LocaleKeys.signupdis.tr(),
                style: TextStyle(fontSize: 12.sp, color: const Color(0xff7C7D7E)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35.h,
              ),
              TextFormField(
                  decoration:  InputDecoration(
                hintText: LocaleKeys.name.tr() ,
                labelStyle: const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
              )),
              SizedBox(
                height: 28.h,
              ),
              TextFormField(
                decoration:  InputDecoration(
                    hintText:LocaleKeys.email.tr(),
                    labelStyle:
                       const TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
              ),
               SizedBox(
                height: 28.h,
              ),
              TextFormField(
                decoration:  InputDecoration(
                    hintText: LocaleKeys.mobileno.tr(),
                    labelStyle:
                      const  TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
              ),
              SizedBox(
                height: 28.h,
              ),
              TextFormField(
                decoration:  InputDecoration(
                    hintText: LocaleKeys.address.tr(),
                    labelStyle:
                      const  TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
              ),
              SizedBox(
                height: 28.h,
              ),
               TextFormField(
                decoration:  InputDecoration(
                    hintText: LocaleKeys.password.tr(),
                    labelStyle:
                       const TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
              ),
              SizedBox(
                height: 28.h,
              ),
               TextFormField(
                decoration:  InputDecoration(
                    hintText: LocaleKeys.confirmpassword.tr(),
                    labelStyle:
                      const  TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
              ),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()),);
                },
                child:  Text(LocaleKeys.signup.tr()),
              ),
              SizedBox(
                height: 28.h,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                   TextSpan(
                      text: LocaleKeys.alreadyhaveanaccount.tr(),
                      style:
                         const TextStyle( color: Color(0xff7C7D7E))),
                  WidgetSpan(
                      child: GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()),);
                    },
                    child:  Text(
                      LocaleKeys.login.tr(),
                      style: const TextStyle(color: Color(0xffFC6011)),
                    ),
                  ),
                  ),
      
                ]),
                style: TextStyle(fontSize: 12.sp),
                ),
              ),
              SizedBox(height: 28.h,),
            ],
          ),
        )),
      ),
    );
  }

}