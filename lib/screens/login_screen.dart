import 'package:chat_app/screens/sign_up/sign_up_screen.dart';
import 'package:chat_app/style/app_colors.dart';
import 'package:chat_app/widget/login_screen_widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'Login Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Login',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 25.h),
              // TextFormFieldWidget(label: 'Email'),
              SizedBox(height: 39.h),
              // TextFormFieldWidget(
              //   label: 'Password',
              //   secure: true,
              // ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 17.5.h, horizontal: 40.w)),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      size: 30.r,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
                child: Text(
                  'Or Create My Account',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
