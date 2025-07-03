import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              Image.asset("images/codingchef.png", width: 150, height: 150)
                  .animate()
                  .fade()
                  .slideY(begin: -3, end: 0)
                  .animate(onPlay: (controller) => controller.repeat())
                  .shake(
                    hz: 4,
                    curve: Curves.easeInOutCubic,
                    duration: 1800.ms,
                  ),
              const SizedBox(height: 5),
              Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                  .animate()
                  .fade(delay: 500.ms)
                  .slideX(begin: -2, end: 0)
                  .tint(color: Colors.purple, delay: 1000.ms),
              const SizedBox(height: 5),
              Text(
                "Sign in to Continue",
                style: TextStyle(color: Colors.grey[700]),
              ).animate().fade(delay: 500.ms).slideX(begin: 2, end: 0),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "UserName",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  obscureText: true, // 패스워드 보안
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
