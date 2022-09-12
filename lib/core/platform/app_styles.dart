import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'themes.dart';

class AppStyles {
  static final theme = BlackYellowTheme();
  // For snackbar/Toast text
  static TextStyle textStyleSnackbar() => GoogleFonts.titilliumWeb(
        fontWeight: FontWeight.w700,
        color: theme.background,
        fontSize: AppFontSizes.small,
      );

  // For onboarding title
  static TextStyle textStyleOnboardingTitle({Color? color}) =>
      GoogleFonts.titilliumWeb(
        fontWeight: FontWeight.w700,
        fontSize: 25.0.sp,
        height: 1.2,
        color: color ?? theme.text,
      );

  // For onboarding description
  static TextStyle textStyleOnboardingDesc({Color? color}) =>
      GoogleFonts.titilliumWeb(
        fontWeight: FontWeight.w400,
        fontSize: 15.0.sp,
        color: color ?? theme.text,
      );

  // For buttons
  static TextStyle textStyleButtons({Color? textColor}) =>
      GoogleFonts.titilliumWeb(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 12.0.sp,
      );
}

class AppFontSizes {
  static const smallest = 12.0;
  static const small = 14.0;
  static const medium = 16.0;
  static const _large = 20.0;
  static const larger = 24.0;
  static const _largest = 28.0;
  static const largestc = 28.0;
  static const _sslarge = 18.0;
  static const _sslargest = 22.0;
  static double largest() {
    if (smallScreen()) {
      return _sslargest;
    }
    return _largest;
  }

  static double large() {
    if (smallScreen()) {
      return _sslarge;
    }
    return _large;
  }

  static double smallText() {
    if (smallScreen()) {
      return smallest;
    }
    return small;
  }
}

bool smallScreen() {
  if (100.0.h < 667) {
    return true;
  } else {
    return false;
  }
}
