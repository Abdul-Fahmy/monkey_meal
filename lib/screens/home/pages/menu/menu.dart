import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatelessWidget{
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.brown,
      )
    );
  }

}