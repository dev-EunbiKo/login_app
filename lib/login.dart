import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:login_app/widget/my_textfield.dart';

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
              MyTextfield(hintText: "UserName", obscureText: false),
              const SizedBox(height: 25),
              MyTextfield(hintText: "Password", obscureText: true),
              const SizedBox(height: 25),
              Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[300],
                ),
                child: const Icon(
                  Icons.arrow_forward,
                ).animate().fade(delay: 1000.ms),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ).animate().fade().slideX(
                    begin: -3,
                    end: 0,
                    duration: 300.ms,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ).animate().fade().slideX(begin: 3, end: 0, duration: 300.ms),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "Powered by CodingChef",
                        style: TextStyle(fontSize: 11),
                      ).animate().fade().slideX(
                        begin: -3,
                        end: 0,
                        delay: 300.ms,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          image: const DecorationImage(
                            image: AssetImage('images/codingchef3.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                      .animate()
                      .slideX(begin: 3, end: 0, duration: 300.ms)
                      .animate(onPlay: (controller) => controller.repeat())
                      .shimmer(delay: 1000.ms, duration: 1800.ms),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
