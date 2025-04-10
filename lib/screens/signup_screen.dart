import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../screens/login_screen.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/splash_image.png', height: 100, width: 100),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Please Create an Account!',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person, color: AppColors.primaryColor),
                  controller: nameController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email, color: AppColors.primaryColor),
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Phone NUmber',
                  prefixIcon: Icon(Icons.phone, color: AppColors.primaryColor),
                  controller: phoneController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor),
                  suffixIcon: Icon(Icons.visibility_off),
                  controller: nameController,
                ),
                const SizedBox(height: 80),
                PrimaryButton(
                  title: 'SignUp',
                  icon: Icons.create,
                  ontap: () {},
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    const SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (c) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
