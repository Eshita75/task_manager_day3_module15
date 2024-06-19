import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_day3_module15/ui/screens/authentication/sign_up_screen.dart';
import 'package:task_manager_day3_module15/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_day3_module15/ui/utility/app_colors.dart';
import 'package:task_manager_day3_module15/ui/widgets/background_widget.dart';
import 'package:task_manager_day3_module15/ui/screens/authentication/email_verification_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120,),
                  Text('Get Started With', style: Theme.of(context).textTheme.titleLarge,),

                  SizedBox(height: 24,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailTEController,
                    decoration: InputDecoration(
                      hintText: 'Email'
                    ),
                  ),

                  SizedBox(height: 8,),

                  TextFormField(
                    controller: _passwordTEController,
                    decoration: InputDecoration(
                      hintText: 'Password'
                    ),
                  ),
                  SizedBox(height: 16,),

                  ElevatedButton(onPressed: _onTapNextScreen, child: Icon(Icons.arrow_circle_right_outlined),),

                  SizedBox(height: 36,),

                  Center(
                    child: Column(
                      children: [
                        TextButton(onPressed: _onTapForgotPasswordButton, child: Text('Forgot password?'),),
                        RichText(text: TextSpan(
                            style: TextStyle(
                                color: Colors.black.withOpacity(.8),
                                fontWeight: FontWeight.w600,
                                letterSpacing: .4
                            ),
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(color: AppColors.themeColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _onTapSignUpButton();
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _onTapNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MainBottomNavScreen();
        },
      ),
    );
  }

  _onTapSignUpButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const SignUpScreen();
        },
      ),
    );
  }

  _onTapForgotPasswordButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const EmailVerificationScreen();
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
