import 'package:flutter/material.dart';
import 'package:login_modern_ui/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();

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
              MyTextfield(),
              const SizedBox(height: 25,),
              MyTextfield(),

            ],
          ),
        ),
      ),
    );
  }
}
