import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app_registration/views/login_screen.dart';
import '../globals/app_buttons.dart';
import '../globals/app_fonts.dart';
import '../globals/app_navigators.dart';
import '../globals/app_textFields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late FocusNode nameFocus;
  late FocusNode emailFocus;
  late FocusNode passFocus;

  double emailWidth = 370.0, passwordWidth = 370.0, nameWidth = 370.0;

  @override
  void initState() {
    super.initState();

    emailFocus = FocusNode();
    nameFocus = FocusNode();
    passFocus = FocusNode();

    nameFocus.addListener(() {
      passwordWidth = 370.0;
      emailWidth = 370.0;
      nameWidth = 500.0;
    });
    emailFocus.addListener(() {
      print(emailFocus.hasFocus);
      passwordWidth = 370.0;
      nameWidth = 370.0;
      emailWidth = 500.0;
      setState(() {});
    });
    passFocus.addListener(() {
      print(passFocus.hasFocus);
      emailWidth = 370.0;
      nameWidth = 370.0;
      passwordWidth = 500.0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailFocus.dispose();
    passFocus.dispose();
    nameFocus.dispose();
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
            child: SingleChildScrollView(
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
                      'Sign Up',
                      style: AppFonts.monteseratStyle(),
                    ),
                  ),
                  const SizedBox(height: 45),
                  FadeInDownBig(
                    duration: const Duration(milliseconds: 1400),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      width: nameWidth,
                      child: TextField(
                        cursorColor: Colors.white,
                        focusNode: nameFocus,
                        style: AppFonts.comfortaStyle(),
                        decoration: AppTextFields.textFieldDecoration(
                            hintText: 'Full Name', prefixIconData: Icons.person),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FadeInDownBig(
                    duration: const Duration(milliseconds: 1600),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      width: emailWidth,
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
                    duration: Duration(milliseconds: 1800),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      width: passwordWidth,
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
                  // Spacer(),
                  SizedBox(height: 75),
                  FadeInUpBig(
                      duration: const Duration(milliseconds: 1800),
                      child: AppButtons.materialButton(
                          buttonName: 'Sign up',
                          buttonWidth: size.width * 0.8,
                          onTap: () {})),
                  SizedBox(height: 45),
                  InkWell(
                    onTap: () {
                      AppNavigators.navigateTo(
                          context: context, screenName: const LoginScreen());
                    },
                    child: FadeInUpBig(
                      duration: const Duration(milliseconds: 1800),
                      child: RichText(
                        text: TextSpan(
                          text: 'Already registered? ',
                          style: AppFonts.comfortaStyle(),
                          children: [
                            TextSpan(
                              text: ' Sign in',
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
      ),
    );
  }
}
