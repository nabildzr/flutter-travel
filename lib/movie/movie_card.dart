import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MovieCard(title: "Waw", image: "https://m.media-amazon.com/images/M/MV5BYjdlMTNjZTYtOWJhMi00YWE5LWJhOGItYTllYjU0NWJmOTE0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg ", category: "",),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;

  const MovieCard({
    super.key,
    required this.image, 
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                20
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                
                child: Image.network(
                  image,
                  fit: BoxFit.cover,width: double.infinity,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
            20
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: const Color.fromARGB(155, 0, 0, 5),
                  
                  width: double.infinity,
                  height: 60,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Text(title, style: const TextStyle(color: Colors.white, fontSize: 11)),
                          Text(category, style: const TextStyle(color: Colors.white, fontSize: 9)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
