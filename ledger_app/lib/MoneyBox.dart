import 'package:flutter/material.dart';

//สร้างต้นแบบ container
class MoneyBox extends StatelessWidget {
  String title;
  double amount;
  Color color;
  double size;

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      height: size,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              amount.toString(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}
