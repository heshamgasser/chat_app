import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main (){
  runApp(ChatApp());
}


class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName:(context) => LoginScreen(),
        },
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
