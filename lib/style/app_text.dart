import 'package:chat_app/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
 static TextStyle poppins20BoldWhite = GoogleFonts.poppins(
     fontSize: 20.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white
     );
 static TextStyle poppins24BoldBlack = GoogleFonts.poppins(
     fontSize: 24.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black
     );
 static TextStyle poppins12RegularGray = GoogleFonts.poppins(
     fontSize: 12.sp,
  fontWeight: FontWeight.normal,
  color: AppColors.grayColor
     );
 static TextStyle poppins14SemiBoldWhite = GoogleFonts.poppins(
     fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: Colors.white
     );
}