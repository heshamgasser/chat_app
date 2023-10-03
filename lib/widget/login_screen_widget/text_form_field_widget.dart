import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
 String label;
 bool secure;


 TextFormFieldWidget({required this.label, this.secure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      obscureText: secure,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBlueColor)
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.blueColor)
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBlueColor)
        ),
        disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBlueColor)
        ),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
        ),
        labelText: label,
        labelStyle: Theme.of(context).textTheme.displaySmall,




      ),
    );
  }
}
