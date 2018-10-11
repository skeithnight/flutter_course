import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;

// ini adalah constructor
// stateless hanya 1 kali rendered UI. jd ketika ada data baru menunggu build ulang.
  Products(this.products){
    print("ini construtor");
  }

  @override
  Widget build(BuildContext context) {
    print("ini build()");
    return Column(
      children: products
          .map(
            (elements) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(elements)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
