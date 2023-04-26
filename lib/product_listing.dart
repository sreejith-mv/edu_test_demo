import 'package:edu_test_demo/api.dart';
import 'package:flutter/material.dart';

class ProductListing extends StatefulWidget {
  final ProductsApi api;
  const ProductListing({super.key, required this.api});

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  List<dynamic> _products = [];

  @override
  void initState() {
    super.initState();
    widget.api.getProducts().then((value) => setState(() => _products = value));
    // .catchError(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = _products[index];
        return ListTile(
          title: Text(product['title']),
        );
      },
    );
  }
}
