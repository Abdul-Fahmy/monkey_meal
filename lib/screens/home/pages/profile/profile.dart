import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../generated/locale_keys.g.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 24.sp, color: const Color(0xff4A4B4D)),
                ),
                SizedBox(
                  width: 230.w,
                ),
                Image.asset(
                  Assets.icons.shoppingCart.path,
                  width: 22.w,
                  height: 20.h,
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 102.h,
              width: 102.w,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage(Assets.images.onboarding.userImg.path),
                radius: 60.r,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.edit,
                  size: 15,
                  color: Color(0xffFC6011),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 10.sp, color: const Color(0xffFC6011)),
                )
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              "Hi there Emilia!",
              style: TextStyle(fontSize: 16.sp, color: const Color(0xff4A4B4D)),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Sign Out",
              style: TextStyle(fontSize: 11.sp, color: const Color(0xffFC6011)),
            ),
            SizedBox(
              height: 47.h,
            ),
            TextFormField(
                decoration: InputDecoration(
              labelText: LocaleKeys.name.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            TextFormField(
                decoration: InputDecoration(
              labelText: LocaleKeys.email.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            TextFormField(
                decoration: InputDecoration(
              labelText: LocaleKeys.mobileno.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            TextFormField(
                decoration: InputDecoration(
              labelText: LocaleKeys.address.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            TextFormField(
              obscureText: true,
                decoration: InputDecoration(
              labelText: LocaleKeys.password.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            TextFormField(
              obscureText: true,
                decoration: InputDecoration(
              labelText: LocaleKeys.confirmpassword.tr(),
              labelStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffB6B7B7)),
            )),
            SizedBox(
              height: 17.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> const OtpScreen()),);
                  },
                  child:  Text("Save",style: TextStyle(fontSize: 16.sp),),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    )));
  }
}
