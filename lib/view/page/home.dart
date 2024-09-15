import 'package:flutter/material.dart';
import 'package:food_order_app/model/food.dart';
import 'package:food_order_app/view/widget/food_card.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'detail_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience the great Place",
                    style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold, height: 1.2),
                  ),
                  Gap(15),
                  Text(
                    "Our comfortable place for holidays",
                    style: TextStyle(fontSize: 15),
                  ),
                  Gap(15),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: itemFood.length,
                  itemBuilder: (context, index) {
                    return ZoomTapAnimation(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage(item: itemFood[index]))
                          );
                        },
                        child: FoodCard(
                          title: itemFood[index].title,
                          price: itemFood[index].price,
                          rating: itemFood[index].rating,
                          img: itemFood[index].img,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
