import 'package:food_order_app/view/page/home.dart';
import 'package:gap/gap.dart';
import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';

class LoginTest extends StatefulWidget {
  const LoginTest({super.key});

  @override
  State<LoginTest> createState() => _LoginTestState();
}

class _LoginTestState extends State<LoginTest> {
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
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      // tampilkan notifikasi error

      DInfo.snackBarError(context, 'Login Failed');

      DInfo.closeToast();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyTextField(
            controller: _emailController,
            hintText: "Inputkan Email",
            icon: Icons.email,
            obscureText: false,
          ),
          const Gap(10),
          MyTextField(
            controller: _passwordController,
            hintText: "Inputkan Password",
            icon: Icons.password,
            obscureText: true,
          ),
          const Gap(10),
          ButtonPrimary(
            buttonText: "Login",
            onPressedAction: login,
          ),
        ],
      ),
    );
  }
}

class ButtonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedAction;

  const ButtonPrimary({
    super.key,
    required this.buttonText,
    required this.onPressedAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          onPressed: onPressedAction,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          child: Text(buttonText)),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.amber,
          prefix: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      obscureText: obscureText,
    );
  }
}
