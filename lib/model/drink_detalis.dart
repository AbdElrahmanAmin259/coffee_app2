import 'package:coffee_app2/components/qty_widget.dart';
import 'package:coffee_app2/components/toggle_widget.dart';
import 'package:coffee_app2/model/model.dart';
import 'package:flutter/material.dart';

class DrinkDetalis extends StatefulWidget {
  const DrinkDetalis({super.key});

  @override
  State<DrinkDetalis> createState() => _DrinkDetalisState();
}

class _DrinkDetalisState extends State<DrinkDetalis> {
  final PageController _controller = PageController(viewportFraction: 0.50);
  double currentPage = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page ?? 1;
      });
    });
    super.initState();
  }

  final drinks = DrinkModel.drinks;
  //logic
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[currentPage.round()].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(drinks[currentPage.round()].title),
                  ],
                ),
                Text(
                  drinks[currentPage.round()].price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              final scal = 1 - (currentPage - index).abs() * 1;
              final translatY = (currentPage - index).abs() * 400;
              return Transform.translate(
                offset: Offset(translatY, 0),
                child: Transform.scale(
                  scale: scal.clamp(0.5, 1.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset(
                            drinks[index].image,
                            fit: BoxFit.contain,
                            height: 600,
                          ),
                          Positioned(
                            bottom: 100,
                            right: 0,
                            left: 0,
                            child: Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 80,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return CircleAvatar(
                      backgroundColor: Colors.white,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectindex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectindex == index
                                ? Colors.orange
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: selectindex == index
                                  ? Colors.orange
                                  : Colors.black87,
                            ),
                            // color: Colors.black87,
                          ),

                          child: Icon(
                            Icons.align_vertical_center_rounded,
                            color: selectindex == index
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ToggleWidget(), QtyWidget()],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
