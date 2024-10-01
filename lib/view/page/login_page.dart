import 'package:flutter/material.dart';
import 'package:food_order_app/view/page/sign_in.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Image.network(
                  'https://images.stockcake.com/public/f/1/2/f126c53d-bd48-4c5e-ad6d-f668ba520830_large/cozy-window-nook-stockcake.jpg',
                  fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                child: AspectRatio(
                  aspectRatio: 4 / 4,
                  child: Container(
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                height: 1.1),
                          ),
                          Text(
                            'TravelLiga',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                          Gap(5),
                          Text(
                            'Find Your Place helps you to easily. intimate like Rent House and restaurants or large format.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                            minimumSize: Size(200, 50),

                              ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            
                          )),
                    ),
                    Gap(5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            side: BorderSide(color: Colors.amber, width:2),
                            minimumSize: Size(200, 50),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 16, color: Colors.amber),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
