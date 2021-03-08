import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

//สร้างwidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "บัญชีรายรับรายจ่าย",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดเงินคงเหลือ", 20000, Colors.green, 120),
              SizedBox(
                height: 10,
              ),
              MoneyBox("รายรับ", 10000, Colors.orange, 100),
              SizedBox(
                height: 10,
              ),
              MoneyBox("รายจ่าย", 5000, Colors.blue, 100),
              SizedBox(
                height: 10,
              ),
              MoneyBox("ยอดค้างชำระ", 2000, Colors.red[200], 100),
            ],
          )),
    );
  }
}
