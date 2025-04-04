import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                child: Column(crossAxisAlignment: CrossAxisAlignment.start),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
