import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

// ini adalah construtor
// statefull widget bisa rendered UI sesuai data yg berubah
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

// ini akan ter initiate ketika product manager dipanggil
// ini akan jalan duluan sebelum build class
  @override
  void initState() {
    // kenapa tidak pakai setState??
    // karena kan ini initState yg jalan dluan sebelum build jd ga perlu setState.
    // widget.xxx adalah koneksi dengan ke stafulwidget dari extend State.
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add("Advance Food Tester");
              });
            },
            child: Text("Add Product"),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
