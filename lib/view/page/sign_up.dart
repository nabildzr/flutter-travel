import 'package:food_order_app/view/page/sign_in.dart';
import 'package:d_info/d_info.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void register() {
    final String username = _usernameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (username == "test" && email == "test@gmail.com" && password == "123") {
      DInfo.snackBarSuccess(
          context, "Register Sukses, anda akan di alihkan ke Sign In");
      // jika sukses maka tunggu dahulu 5 detik lalu akan di redirect ke sign in
      Future.delayed(
          // duration
          const Duration(seconds: 5), () {
        // redirect
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignInPage()));
      });
    }
    // jika ada field yamg belum di isi maka akan muncul notifikasi error
    else if (username.isEmpty || email.isEmpty || password.isEmpty) {
      DInfo.snackBarError(context, "Register Gagal, isi semua data");
    }
    // jika data gagal di buat maka akan muncul notifikasi error registrasi gagal
    else {
      DInfo.snackBarError(context, "Register Gagal");
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
                  inputText: "Username",
                  controller: _usernameController),
              MyTextField(
                  obscureText: false,
                  inputText: "Email",
                  controller: _emailController),
              MyTextField(
                  obscureText: true,
                  inputText: "Password",
                  controller: _passwordController),
              const Gap(25),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ButtonPrimary(
                        buttonText: "Sign Up", onPressedAction: register),
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
                    "Already Have an Account?",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Sign In',
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
