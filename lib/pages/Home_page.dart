import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catelog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  final int days = 31;
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, ((index) => CatelogModel.Items[0]));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidgets(
                item: dummyList[index],
              );
            }),
      ),
      drawer: const MyDrawer(),
    );
  }
}
