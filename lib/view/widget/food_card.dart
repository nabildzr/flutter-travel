import 'package:flutter/material.dart';
// import 'package:latihan/food_component.dart';
// import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:gap/gap.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
    required this.img,
  });

  final String title;
  final int price;
  final double rating;
  final String img;

  @override
  Widget build(BuildContext context) {
    final formatPrice = NumberFormat("#,##0", "id_ID").format(price);

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset('assets/image/$img', fit: BoxFit.cover),
            ),
          ),
            Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
            ),
              // Wrap the Column with Expanded
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp. $formatPrice",
                          style: const TextStyle(
                            fontSize: 10,
                          )),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 10),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "$rating",
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
