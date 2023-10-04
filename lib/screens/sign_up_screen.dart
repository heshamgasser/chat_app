import 'package:chat_app/widget/login_screen_widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
 static const String routeName = 'Sign Up Screen';

 GlobalKey<FormState> formKey = GlobalKey();

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
          leading: BackButton(onPressed: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },),
          title: Text(
            'Create Account',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),
                  TextFormFieldWidget(label: 'First Name'),
                  TextFormFieldWidget(label: 'Last Name'),
                  TextFormFieldWidget(label: 'User Name'),
                  TextFormFieldWidget(label: 'E-mail Address'),
                  TextFormFieldWidget(label: 'Password', secure: true,),
                  SizedBox(height: 30.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 17.5.h, horizontal: 40.w)),
                    onPressed: () {
                      if (formKey.currentState!.validate()){

                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Create Account',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
