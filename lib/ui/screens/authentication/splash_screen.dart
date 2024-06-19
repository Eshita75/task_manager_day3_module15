import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_day3_module15/ui/screens/authentication/sign_in_screen.dart';
import 'package:task_manager_day3_module15/ui/utility/assets_path.dart';
import 'package:task_manager_day3_module15/ui/widgets/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    if(mounted){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SignInScreen();
          },
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: SvgPicture.asset(
            AssetsPaths.appLogoSVG,
            width: 140,
          ),
        ),
      ),
    );
  }
}
