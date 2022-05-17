import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/screens/home/pages/home/home.dart';
import 'package:monkey/screens/home/pages/menu/menu.dart';
import 'package:monkey/screens/home/pages/more/more.dart';
import 'package:monkey/screens/home/pages/offers/offers.dart';
import 'package:monkey/screens/home/pages/profile/profile.dart';

import '../../gen/assets.gen.dart';

class MainHomeScreen extends StatefulWidget{
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();

}
class _MainHomeScreenState extends State<MainHomeScreen>{
 
 var pages = [const MenuScreen(), const OffersScreen(), const HomeScreen(), const ProfileScreen(), const MoreScreen()];
  List icons = [
    
   (Assets.icons.bottomBar.menu.path),
    (Assets.icons.bottomBar.offers.path),
   (Assets.icons.bottomBar.home.path),
    (Assets.icons.bottomBar.profile.path),
    (Assets.icons.bottomBar.more.path)
  ];
  
  
 
  var title = ["Menu", "Offers", "Home", "Profile", "More"];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: (){
          currentPage = 2;
          setState(() {});
        },
        child: CircleAvatar(
          radius: 35.r,
          backgroundColor: currentPage==2?const Color(0xffFC6011):const Color(0xffB6B7B7),
          child: const Icon(Icons.home,color:Colors.white,),
        ),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 75.h,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("/Users/mac/Desktop/monkey/monkey/assets/icons/bottom_nav.png"),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff4A4B4D).withOpacity(.11),
                  blurRadius: 30.r,
                  blurStyle: BlurStyle.outer,
                  // spreadRadius: 50
                ),
              ]),
          child: Row(
            children: List.generate(
                pages.length,
                (index) => index == 2
                    ? const Spacer()
                    : Expanded(
                        child: GestureDetector(
                          onTap: () {
                            currentPage = index;
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                 icons[index],width: 14.w,height: 14.h
                                
                                 ,

                               
                                color:
                                    index == currentPage ? const Color(0xffFC6011) : null,
                              ),
                              Text(
                                title[index],
                                style: TextStyle(
                                    color: index == currentPage
                                        ? Colors.orange
                                        : null),
                              )
                            ],
                          ),
                        ),
                      )),
          )),
    );
  }
}