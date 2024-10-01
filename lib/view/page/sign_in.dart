import 'package:food_order_app/view/page/home.dart';
import 'package:food_order_app/view/page/sign_up.dart';
import 'package:gap/gap.dart';
import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // fungsi login
  login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // jika email = test@gmail.com dan password = 123
    // maka masuk ke halaman home

    if (email == "test@gmail.com" && password == "123") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } else {
      // tampilkan notifikasi error

      DInfo.snackBarError(context, 'Login Failed');

      DInfo.closeToast();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              Image.asset(
                'assets/image/location.png',
                height: 90,
              ),
              const Gap(30),
              const Text(
                "Let's sign you in.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Gap(10),
              Text(
                "Sign in with your data that you have \n entered during your registration.",
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const Gap(50),
              MyTextField(
                  obscureText: false,
                  inputText: "Email",
                  controller: _emailController),
              MyTextField(
                  obscureText: true,
                  inputText: "Password",
                  controller: _passwordController),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.amber[800]),
                    ),
                  ),
                ],
              ),
              const Gap(25),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ButtonPrimary(
                        buttonText: "Sign In", onPressedAction: login),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        side: const BorderSide(color: Colors.amber, width: 2),
                        minimumSize: const Size(200, 50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/image/google.png', height: 20),
                          const Gap(5),
                          const Text('Sign In with Google',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.amber[800], fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonPrimary extends StatelessWidget {
  final VoidCallback onPressedAction;
  final String buttonText;

  const ButtonPrimary({
    super.key,
    required this.onPressedAction,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedAction,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber[800],
          shadowColor: Colors.transparent,
          minimumSize: const Size(200, 50)),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final bool obscureText;
  final String inputText;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.obscureText,
    required this.inputText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
        labelText: inputText,
        labelStyle: const TextStyle(fontSize: 17),
      ),
      style: const TextStyle(fontSize: 16, color: Colors.black),
      obscureText: obscureText,
    );
  }
}
