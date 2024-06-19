import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_day3_module15/ui/utility/app_colors.dart';
import 'package:task_manager_day3_module15/ui/widgets/background_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _firstNameTEController = TextEditingController();
  TextEditingController _lastNameTEController = TextEditingController();
  TextEditingController _mobileTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();

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
                  Text('Join With Us', style: Theme.of(context).textTheme.titleLarge,),

                  SizedBox(height: 24,),

                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email'
                    ),
                  ),

                  SizedBox(height: 12,),

                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: InputDecoration(
                      hintText: 'First Name'
                    ),
                  ),

                  SizedBox(height: 12,),

                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: InputDecoration(
                        hintText: 'Last Name'
                    ),
                  ),

                  SizedBox(height: 12,),

                  TextFormField(
                    controller: _mobileTEController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Mobile'
                    ),
                  ),

                  SizedBox(height: 12,),

                  TextFormField(
                    controller: _passwordTEController,
                    decoration: InputDecoration(
                        hintText: 'Password'
                    ),
                  ),

                  const SizedBox(height: 16,),

                  ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined),),

                  const SizedBox(height: 36,),

                  _buildBackToSignInSection()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackToSignInSection() {
    return Center(
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontWeight: FontWeight.w600,
                letterSpacing: .4),
            text: "Have account? ",
            children: [
            TextSpan(
                text: 'Sign In',
                style: const TextStyle(color: AppColors.themeColor),
                recognizer: TapGestureRecognizer()..onTap = () {})
          ],
        ),
      ),
    );
  }

  _onTapSIgnInButton(){
    Navigator.pop(context);
  }
  @override
  void dispose() {
    _emailTEController.dispose();
    _mobileTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
