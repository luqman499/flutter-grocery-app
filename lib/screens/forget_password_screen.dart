import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectAssignment/constants/colors.dart';
import 'package:projectAssignment/widgets/custom_text_field.dart';
import 'package:projectAssignment/widgets/primary_button.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset('images/splash_image.png', width: 150, height: 150),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'please Enter Your Email Address',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                hintText: 'Enter Your Email',
                prefixIcon: Icon(Icons.mail, color: AppColors.primaryColor),
                controller: emailController,
              ),
              const SizedBox(height: 150),
              PrimaryButton(title: 'Send Mail', icon: Icons.mail, ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
