import 'package:edu_test_demo/api.dart';
import 'package:edu_test_demo/counter.dart';
import 'package:edu_test_demo/product_listing.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String message;
  const HomeScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Hello World!!!'),
            Text(message),
            Counter(key: key),
            // ProductListing(
            //   api: ProductsApi(),
            //   key: key,
            // ),
          ],
        ),
      ),
    );
  }
}
