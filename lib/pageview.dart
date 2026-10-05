import 'package:coffee_app2/components/drink.dart';
import 'package:coffee_app2/model/drink_detalis.dart';
import 'package:coffee_app2/model/model.dart';
import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              controller: controller,
              itemCount: DrinkModel.drinks.length,
              itemBuilder: (context, index) {
                final drink = DrinkModel.drinks[index];
                return AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    double offset = 0;
                    if (controller.hasClients) {
                      offset = controller.offset / 100 - index;
                    }
                    offset = offset.clamp(0, 2);
                    return Transform.scale(
                      scale: 1 - (offset * 0.2),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (e) => DrinkDetalis()),
                        ),
                        child: Drink(
                          image: drink.image,
                          name: drink.name,
                          title: drink.title,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
