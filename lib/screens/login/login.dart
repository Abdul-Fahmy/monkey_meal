
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/gen/assets.gen.dart';
import 'package:monkey/generated/locale_keys.g.dart';
import 'package:monkey/screens/onboarding/onboarding.dart';
import 'package:monkey/screens/resetpassword/reset_password.dart';
import 'package:monkey/screens/signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                LocaleKeys.login.tr(),
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
                LocaleKeys.logindis.tr(),
                style: TextStyle(fontSize: 12.sp, color: const Color(0xff7C7D7E)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35.h,
              ),
              TextFormField(
                  decoration:  InputDecoration(
                hintText: LocaleKeys.youremail.tr(),
                labelStyle: const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
              )),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const OnboardingScreen()),);
                },
                child:  Text(LocaleKeys.login.tr()),
              ),
              SizedBox(
                height: 28.h,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResetPasswordScreen()),);
                },
                child:  Text(
                  LocaleKeys.forgotyourpassword.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
               Text(
                LocaleKeys.orloginwith.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
              ),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: const Color(0xff367FC0)),
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 23),
                  child: Image.asset(
                    Assets.icons.facebook.path,
                    width: 7.w,
                    height: 15.h,
                  ),
                ),
                label:  Text(
                  LocaleKeys.loginwithfacebook.tr(),
                  style: const TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: const Color(0xffDD4B39)),
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 23),
                  child: Image.asset(
                    Assets.icons.googlePlusLogo.path,
                    width: 19.w,
                    height: 12.h,
                  ),
                ),
                label:  Text(
                  LocaleKeys.loginwithgoogle.tr(),
                  style: const TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                   TextSpan(
                      text: LocaleKeys.donthaveanaccount.tr(),
                      style:
                         const TextStyle( color: Color(0xff7C7D7E))),
                  WidgetSpan(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                    },
                    child:  Text(
                      LocaleKeys.signup.tr(),
                      style:const TextStyle(color: Color(0xffFC6011)),
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
