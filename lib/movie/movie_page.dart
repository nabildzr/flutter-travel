import 'package:flutter/material.dart';
import 'package:food_order_app/movie/movie_model.dart';
import 'package:food_order_app/movie/movie_card.dart';
import 'package:gap/gap.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 17, 32),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find your\nBest Movie',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Gap(10),
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: Colors.white,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 1, 26, 46),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
            const Gap(10),
            const Text(
              'Now Playing',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const Gap(8),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: itemMovie.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                      image: itemMovie[index].image,
                      title: itemMovie[index].title,
                      category: itemMovie[index].category,
                   );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
