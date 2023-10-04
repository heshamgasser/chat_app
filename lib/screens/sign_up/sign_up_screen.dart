import 'package:chat_app/screens/sign_up/sign_up_vm.dart';
import 'package:chat_app/widget/login_screen_widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../login_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'Sign Up Screen';

  GlobalKey<FormState> formKey = GlobalKey();

  SignUpViewModel signUpViewModel = SignUpViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => signUpViewModel,
      child: Container(
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
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
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
                    TextFormFieldWidget(label: 'First Name',
                        controller: signUpViewModel.firstNameController),
                    TextFormFieldWidget(label: 'Last Name',
                        controller: signUpViewModel.lastNameController),
                    TextFormFieldWidget(label: 'User Name',
                        controller: signUpViewModel.userNameController),
                    TextFormFieldWidget(label: 'E-mail Address',
                        controller: signUpViewModel.emailController),
                    TextFormFieldWidget(label: 'Password',
                        secure: true,
                        controller: signUpViewModel.passwordController),
                    SizedBox(height: 30.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 17.5.h, horizontal: 40.w)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          signUpViewModel.createAccount(
                              signUpViewModel.emailController.text,
                              signUpViewModel.passwordController.text);
                        }
                      },
                      child: Row(
                        children: [
                          Text(
                            'Create Account',
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleMedium,
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
      ),
    );
  }
}
