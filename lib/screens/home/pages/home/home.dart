import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  "Good morning Akila!",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xff4A4B4D)),
                ),
                SizedBox(
                  width: 115.w,
                ),
                Image.asset(
                  Assets.icons.shoppingCart.path,
                  width: 22.w,
                  height: 20.h,
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "Delivering to",
              style: TextStyle(fontSize: 11.sp, color: const Color(0xffB6B7B7)),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Text(
                  "Current Location",
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xff7C7D7E)),
                ),
                SizedBox(
                  width: 37.w,
                ),
                Image.asset(
                  Assets.icons.arrow.path,
                  width: 10.w,
                  height: 5.h,
                )
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.all(14.0),
                    child: Image(
                      image: AssetImage(Assets.icons.searchIcon.path),
                      width: 14.w,
                      height: 14.h,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 5, right: 5),
                  hintText: "Search food",
                  hintStyle: TextStyle(
                      fontSize: 14.sp, color: const Color(0xffB6B7B7))),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 113.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products
                              .alirezaEtemadi9GOJBKwi1cUnsplash.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const Text(
                          "Offers",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.haryoSetyadiYvzzemH8J0Unsplash
                              .path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const Text(
                          "Sri Lankan",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products
                              .jakubKapusnakTEVisOXz26YUnsplash.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const Text(
                          "Italian",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.shreyakSingh0j4bisyPo3MUnsplash
                              .path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const Text(
                          "Indian",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Row(
              children: [
                Text(
                  "Popular Restaurents",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xff4A4B4D)),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 13.sp, color: const Color(0xffFC6011)),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 190.h,
              width: 370.w,
              child: Image.asset(Assets.images.products
                  .aurelienLemassonTheobaldX00CzBt4DfkUnsplash.path),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Minute by tuk tuk",
              style: TextStyle(fontSize: 16.sp, color: const Color(0xff4A4B4D)),
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFC6011),
                ),
                Text(
                  "4.2",
                  style: TextStyle(
                      fontSize: 11.sp, color: const Color(0xffFC6011)),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "(124 ratings) Café     Western Food",
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xffB6B7B7)),
                )
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            SizedBox(
              height: 190.h,
              width: 370.w,
              child: Image.asset(
                  Assets.images.products.heatherFordTeuvnOXOGVoUnsplash.path),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Café de Noir",
              style: TextStyle(fontSize: 16.sp, color: const Color(0xff4A4B4D)),
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFC6011),
                ),
                Text(
                  "4.2",
                  style: TextStyle(
                      fontSize: 11.sp, color: const Color(0xffFC6011)),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "(124 ratings) Café     Western Food",
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xffB6B7B7)),
                )
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            SizedBox(
              height: 190.h,
              width: 370.w,
              child: Image.asset(Assets
                  .images.products.prakashMeghani07bBNmiV7agUnsplash.path),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Bakes by Tella",
              style: TextStyle(fontSize: 16.sp, color: const Color(0xff4A4B4D)),
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFC6011),
                ),
                Text(
                  "4.2",
                  style: TextStyle(
                      fontSize: 11.sp, color: const Color(0xffFC6011)),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "(124 ratings) Café     Western Food",
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xffB6B7B7)),
                )
              ],
            ),
            SizedBox(
              height: 49.h,
            ),
            Row(
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xff4A4B4D)),
                ),
                SizedBox(
                  width: 158.w,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 13.sp, color: const Color(0xffFC6011)),
                )
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            SizedBox(
              height: 185.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products
                              .karthikGarikapatiOBbTc1VoT0Unsplash.path,
                          width: 228.w,
                          height: 135.h,
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        const Text(
                          "Café De Bambaa",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        ),
                        Row(
                          children: [
                            Text(
                              "Café     Western Food",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xffB6B7B7)),
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffFC6011),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffFC6011)),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products
                              .josephGonzalezZcUgjyqEwe8Unsplash.path,
                          width: 228.w,
                          height: 135.h,
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        const Text(
                          "Burger by Bella",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff4A4B4D)),
                        ),
                        Row(
                          children: [
                            Text(
                              "Café     Western Food",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xffB6B7B7)),
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffFC6011),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffFC6011)),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                Text(
                  "Recent Items ",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xff4A4B4D)),
                ),
                SizedBox(
                  width: 155.w,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 13.sp, color: const Color(0xffFC6011)),
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      Assets
                          .images.products.chadMontanoMqT0asuoIcUUnsplash.path,
                      width: 77.w,
                      height: 77.h,
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mulberry Pizza by Josh",
                          style: TextStyle(
                              fontSize: 18.sp, color: const Color(0xff4A4B4D)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Café     Western Food",
                          style: TextStyle(
                              fontSize: 11.sp, color: const Color(0xffB6B7B7)),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffFC6011),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffFC6011)),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "(124 Ratings)",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffB6B7B7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      Assets
                          .images.products.clemOnojeghuo9AEh9iWPhIUnsplash.path,
                      width: 77.w,
                      height: 77.h,
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mulberry Pizza by Josh",
                          style: TextStyle(
                              fontSize: 18.sp, color: const Color(0xff4A4B4D)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Café     Western Food",
                          style: TextStyle(
                              fontSize: 11.sp, color: const Color(0xffB6B7B7)),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffFC6011),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffFC6011)),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "(124 Ratings)",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffB6B7B7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      Assets
                          .images.products.masimoGrabarNzHRSLhc6CsUnsplash.path,
                      width: 77.w,
                      height: 77.h,
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mulberry Pizza by Josh",
                          style: TextStyle(
                              fontSize: 18.sp, color: const Color(0xff4A4B4D)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Café     Western Food",
                          style: TextStyle(
                              fontSize: 11.sp, color: const Color(0xffB6B7B7)),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffFC6011),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffFC6011)),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "(124 Ratings)",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xffB6B7B7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
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
