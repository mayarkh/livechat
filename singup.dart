import 'package:flutter/material.dart';
import 'components/buttonsignin.dart';
import 'components/fieldsignin.dart';
// ignore: unused_import

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameConreller = TextEditingController();

  // signuser in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              //Create Account
              const Text(
                'Create Account',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 5, 5),
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 15),

              //Username textfield
              MyTextField(
                controller: usernameConreller,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 28),

              //Email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 28),

              //Password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              // sign up button
              MyButton(
                onTap: signUserUp,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
