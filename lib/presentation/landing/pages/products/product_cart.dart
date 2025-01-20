import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
              IconButton(
                onPressed: () {
                  debugPrint('Favorito presionado');
                },
                icon: const Icon(Icons.favorite_border),
                color: Colors.red,
                iconSize: 20,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: const TextStyle(fontSize: 12, color: Colors.blue),
          ),
          const SizedBox(height: 4),
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: List.generate(5, (index) {
             return const Icon(
               Icons.star,
               size: 10,
               color: Colors.amber,
             );
            }),
          ),
        ],
      ),
    );
  }
}
