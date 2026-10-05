import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool isiced = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          _buildToggelSelection("Hot", !isiced),
          _buildToggelSelection("Iced", isiced),
        ],
      ),
    );
  }

  Widget _buildToggelSelection(lable, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isiced = lable == "Iced";
        });
      },
      child: AnimatedContainer(
        alignment: Alignment.bottomCenter,
        curve: Curves.easeIn,
        padding: EdgeInsets.symmetric(horizontal: 20),
        duration: Duration(milliseconds: 400),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.grey[400],
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(padding: const EdgeInsets.all(10.0), child: Text(lable)),
      ),
    );
  }
}
