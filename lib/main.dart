
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/generated/codegen_loader.g.dart';
import 'package:monkey/helper/color.dart';
import 'package:monkey/screens/splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: ScreenUtilInit(
      builder: (context) => const MyApp(),
    ),
    supportedLocales: const [Locale("ar"), Locale("en")],
    path: "assets/translation",
    startLocale: const Locale("en"),
    fallbackLocale: const Locale("ar", "en"),
    saveLocale: true,
    assetLoader: const CodegenLoader(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: buildMaterialColor(const Color(0xffFC6011)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.r),
            ),
            padding: const EdgeInsets.only(top: 17, bottom: 18),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.r),
            ),
            padding: const EdgeInsets.only(top: 17, bottom: 18),
            side: BorderSide(color: const Color(0xffFC6011), width: 1.w),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.r),
              borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),

            // borderSide: BorderSide(color: Color(0xffF2F2F2)),
          ),
          filled: true,
          fillColor: const Color(0xffF2F2F2),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
