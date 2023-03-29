import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app_registration/globals/app_buttons.dart';
import 'package:restaurant_app_registration/globals/app_fonts.dart';
import 'package:restaurant_app_registration/globals/app_navigators.dart';
import 'package:restaurant_app_registration/views/login_screen.dart';
import 'package:restaurant_app_registration/views/sign_up_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/3.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  FadeInDownBig(
                    duration: const Duration(milliseconds: 1000),
                    child: Text(
                      'Bavarian Inn Restaurant',
                      style: AppFonts.boldStyle(),
                    ),
                  ),
                  const SizedBox(height: 14),
                  FadeInDownBig(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'Explore Your Favourite Recipe Food.',
                      style: AppFonts.comfortaStyle(),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            left: 20,
            child: Column(
              children: [
                FadeInUpBig(
                  duration: const Duration(milliseconds: 1200),
                  child: AppButtons.materialButton(
                      buttonName: 'Registration',
                      buttonWidth: size.width * 0.7,
                      onTap: () {
                        AppNavigators.navigateTo(
                            context: context, screenName: const SignUpScreen());
                      }),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    AppNavigators.navigateTo(
                        context: context, screenName: const LoginScreen());
                  },
                  child: FadeInUpBig(
                    duration: const Duration(milliseconds: 1400),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Log In',
                        style: AppFonts.comfortaStyle(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
