import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app_registration/globals/app_buttons.dart';
import 'package:restaurant_app_registration/globals/app_navigators.dart';
import 'package:restaurant_app_registration/globals/app_textFields.dart';
import 'package:restaurant_app_registration/views/sign_up_screen.dart';

import '../globals/app_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FocusNode emailFocus;
  late FocusNode passFocus;

  double emailWidth = 370.0, passwordWidth = 370.0;

  @override
  void initState() {
    super.initState();

    emailFocus = FocusNode();
    passFocus = FocusNode();

    emailFocus.addListener(() {
      print(emailFocus.hasFocus);
      passwordWidth = 370.0;
      emailWidth = 500.0;
      setState(() {
      });
    });
    passFocus.addListener(() {
      print(passFocus.hasFocus);
      emailWidth = 370.0;
      passwordWidth = 500.0;
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailFocus.dispose();
    passFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/5.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 22),
            child: Column(
              children: [
                const SizedBox(height: 14),
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      AppNavigators.backTo(context: context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.black54,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.08),
                FadeInDownBig(
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    'Bavarian Inn Restaurant',
                    style: AppFonts.boldStyle(),
                  ),
                ),
                const SizedBox(height: 25),
                FadeInDownBig(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    'Sign In',
                    style: AppFonts.monteseratStyle(),
                  ),
                ),
                const SizedBox(height: 45),
                FadeInDownBig(
                  duration: const Duration(milliseconds: 1400),
                  child: AnimatedContainer(
                    width: emailWidth,
                    duration: const Duration(milliseconds: 800),
                    child: TextField(
                      cursorColor: Colors.white,
                      focusNode: emailFocus,
                      style: AppFonts.comfortaStyle(),
                      decoration: AppTextFields.textFieldDecoration(
                          hintText: 'Email Address',
                          prefixIconData: Icons.email),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                FadeInDownBig(
                  duration: const Duration(milliseconds: 1600),
                  child: AnimatedContainer(
                    width: passwordWidth,
                    duration: const Duration(milliseconds: 800),
                    child: TextField(
                        cursorColor: Colors.white,
                        focusNode: passFocus,
                        style: AppFonts.comfortaStyle(),
                        decoration: AppTextFields.textFieldDecoration(
                            hintText: 'Password',
                            prefixIconData: Icons.vpn_key)),
                  ),
                ),
                const SizedBox(height: 24),
                FadeInLeftBig(
                  duration: const Duration(milliseconds: 1500),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                FadeInUpBig(
                    duration: const Duration(milliseconds: 1400),
                    child: AppButtons.materialButton(
                        buttonName: 'Log in',
                        buttonWidth: size.width * 0.75,
                        onTap: () {})),
                SizedBox(height: 45),
                InkWell(
                  onTap: () {
                    AppNavigators.navigateTo(
                        context: context, screenName: const SignUpScreen());
                  },
                  child: FadeInUpBig(
                    duration: const Duration(milliseconds: 1600),
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: AppFonts.comfortaStyle(),
                        children: [
                          TextSpan(
                            text: ' Register',
                            style: GoogleFonts.comfortaa(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.red.shade900),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
