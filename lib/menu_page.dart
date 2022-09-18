import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:statefull_widget/screen/grid.dart';
import 'package:statefull_widget/screen/input_page.dart';
import 'package:statefull_widget/screen/screen1.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toko Penjualan Buku Online",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => InputPage(),
                    ),
                  );
                },
                child: Text(
                  "Daftar Penminjaman",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => gridview(),
                    ),
                  );
                },
                child: Text(
                  "Store",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => screen1(),
                    ),
                  );
                },
                child: Text(
                  "Pop eror",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
