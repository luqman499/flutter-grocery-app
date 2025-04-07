import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectAssignment/constants/colors.dart';
import 'package:projectAssignment/screens/forget_password_screen.dart';
import 'package:projectAssignment/widgets/custom_text_field.dart';
import 'package:projectAssignment/widgets/primary_button.dart';
import 'package:projectAssignment/screens/bottom_Nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset('images/splash_image.png', height: 50, width: 50),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wellcome to',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.fontColor,
                      ),
                    ),
                    Text(
                      'Grocery Plus',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Please Login to Your Account',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.fontGrayColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: AppColors.primaryColor,
                      ),
                      controller: emailController,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: AppColors.primaryColor,
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                      controller: passwordController,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (c) => ForgetPasswordScreen(),
                            ),
                          );
                        },
                        child: Text('Forget Passwords?'),
                      ),
                    ),
                    SizedBox(height: 50),
                    PrimaryButton(
                      title: 'Next',
                      icon: Icons.arrow_forward,
                      ontap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          (MaterialPageRoute(builder: (c) => BottomNavBar())),
                          (route) => false,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("don't Have an Account"),
                        const SizedBox(width: 6),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
