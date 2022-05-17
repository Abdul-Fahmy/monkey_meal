import 'package:easy_localization/easy_localization.dart';
import 'package:monkey/gen/assets.gen.dart';

import '../../generated/locale_keys.g.dart';

class OnBoardingController {
  var images = [Assets.images.onboarding.onboarding1.path, Assets.images.onboarding.onboarding2.path, Assets.images.onboarding.onboarding3.path];
  var titles = [LocaleKeys.findfoodyoulove.tr(), LocaleKeys.fastdelivery.tr(), LocaleKeys.livetracking.tr()];
  var hints = [
    LocaleKeys.hint1.tr(),
    LocaleKeys.hint2.tr(),
    LocaleKeys.hint3.tr()
  ];

  int currentIndex = 0;

  changePage(value) {
    currentIndex = value;
  }

}