import 'package:flutter/material.dart';
import 'package:food_order_app/model/category.dart';
import 'package:food_order_app/view/widget/category_card.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 10,
            left: 10,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Food Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              const Text(
                'Our daily healthy food',
                style: TextStyle(fontSize: 16),
              ),
              const Gap(12),
              Expanded(
                child: GridView.builder(
                  
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: itemCategory.length,
                  itemBuilder: (context, index) {
                    return ZoomTapAnimation(
                      child: CardCategory(
                        gambar: itemCategory[index].gambar,
                        nama: itemCategory[index].nama,
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
