import 'package:flutter/material.dart';
import 'package:food_order_app/model/category.dart';

class CardCategory extends StatelessWidget {
  final String gambar;
  final String nama;

  const CardCategory({
    super.key,
    required this.gambar,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Card(
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  gambar,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: const Color.fromARGB(114, 0, 0, 0),
                    child: Center(
                        child: Text(
                      nama,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
