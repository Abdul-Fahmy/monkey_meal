import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/generated/locale_keys.g.dart';
import 'package:monkey/screens/newpassword/new_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsetsDirectional.only(
              top: 40, start: 34, end: 34, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                LocaleKeys.otp.tr(),
                style: TextStyle(
                  fontSize: 25.sp,
                  color: const Color(0xff4A4B4D),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                LocaleKeys.otpdis.tr(),
                style:
                    TextStyle(fontSize: 12.sp, color: const Color(0xff7C7D7E)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35.h,
              ),
              PinCodeTextField(
                pinTheme: PinTheme(
                  
                  inactiveFillColor: const Color(0xffF2F2F2),
                  selectedColor: const Color(0xffF2F2F2),
                  disabledColor: const Color(0xffF2F2F2),
                  activeColor: const Color(0xffF2F2F2),
                  inactiveColor: const Color(0xffF2F2F2),
                  borderWidth: 1,
                  selectedFillColor: const Color(0xffF2F2F2),
                  errorBorderColor: const Color(0xffF2F2F2),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12.r),
                  fieldHeight: 56.h,
                  fieldWidth: 56.w,
                  activeFillColor:const Color(0xffF2F2F2) ,
                ),
               
                enableActiveFill: true,
                backgroundColor: Colors.white,
                blinkWhenObscuring: true,
                obscuringCharacter: "*",
                obscureText: true,
                length: 4,
                // backgroundColor: const Color(0xff707070),
                onChanged: (String value) {},
                appContext: context,
              ),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewPasswordScreen()),);
                },
                child:  Text(LocaleKeys.send.tr()),
              ),
              SizedBox(height: 36.h,),
              Center(
                child: Text.rich(TextSpan(children: [
                   TextSpan(
                      text:LocaleKeys.didntrce.tr(),
                      style:
                         const TextStyle( color: Color(0xff7C7D7E))),
                  WidgetSpan(
                      child: GestureDetector(
                    onTap: () {
                       
                    },
                    child:  Text(
                      LocaleKeys.click.tr(),
                      style: const TextStyle(color: Color(0xffFC6011)),
                    ),
                  ),
                  ),
      
                ]),
                style: TextStyle(fontSize: 12.sp),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
