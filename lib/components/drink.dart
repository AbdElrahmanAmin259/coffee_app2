import 'package:flutter/material.dart';

class Drink extends StatelessWidget {
  const Drink({
    super.key,
    required this.image,
    required this.name,
    required this.title,
  });
  final String image;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.white,
            elevation: 7,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 70, horizontal: 3),
              child: Row(),
            ),
          ),
        ),

        Positioned(
          top: -35,
          left: 5,
          bottom: 27,
          child: SizedBox(
            width: 110,
            height: 150,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade900,
                        blurRadius: 27,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                Image.asset(image, fit: BoxFit.contain),
              ],
            ),
          ),
        ),

        Positioned(
          top: 60,
          right: 75,
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        Positioned(
          top: 90,
          right: 30,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black45),
            ),
            child: const Icon(
              Icons.arrow_forward,
              size: 19,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
