import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/model/app_text_form_field.dart';


class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/logo.png', height: 100, width: 100),  // Adjust the path and dimensions as per your needs
            ),
            AppTextFormField(
              labelText: 'Email',
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            AppTextFormField(
              labelText: 'Password',
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              obscureText: true,
            ),
            AppTextFormField(
              labelText: 'Confirm Password',
              controller: _confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');  // Navigate to home for now
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Blue,
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
