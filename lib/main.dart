import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/style/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main (){
  runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      child: ChatApp()));
}


class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,

      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName:(context) => LoginScreen(),
      },


    );
  }
}
