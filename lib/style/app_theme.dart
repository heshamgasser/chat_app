import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_text.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white, size: 30.r),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 157.h),

    brightness: Brightness.light,
    textTheme: TextTheme(
      titleLarge: AppText.poppins20BoldWhite,
      titleMedium: AppText.poppins14SemiBoldWhite,
      displayLarge: AppText.poppins24BoldBlack,
      // displayMedium: AppText.lightAddTaskBodyFont,
      displaySmall: AppText.poppins12RegularGray,
      // labelLarge: AppText.labelFont,
      // headlineLarge: AppText.taskFont,
      // headlineMedium: AppText.taskDoneFont,
    ),
  );

  static ThemeData darkTheme = ThemeData();
}
