import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("Grid"),
      )),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 255, 106),
                borderRadius: BorderRadius.circular(15)),
            child: Text(myProducts[index]["name"]),
          );
        },
      ),
    );
  }
}
