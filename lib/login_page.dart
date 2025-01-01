import 'package:flutter/material.dart';
import 'package:login_modern_ui/components/button.dart';
import 'package:login_modern_ui/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              Text(
                "Welcome back you've been missed",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25,),
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,

              ),
              const SizedBox(height: 25,),
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyButton(onTap: signUserIn,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
