import 'package:flutter/material.dart';
import 'package:food_order_app/model/food.dart';
import 'package:food_order_app/view/page/category_page.dart';
import 'package:food_order_app/view/page/detail_page.dart';
import 'package:food_order_app/view/page/home.dart';
import 'package:food_order_app/view/page/login_page.dart';
import 'package:food_order_app/view/page/sign_in.dart';
import 'package:food_order_app/view/page/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
