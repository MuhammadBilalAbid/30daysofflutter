import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("WELCOME TO $days DAYS OF FLUTTER"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
