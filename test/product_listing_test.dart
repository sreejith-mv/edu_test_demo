import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import 'package:edu_test_demo/product_listing.dart';
import 'package:edu_test_demo/api.dart';

import 'product_listing_test.mocks.dart' as Mock;

@GenerateMocks([http.Client])
void main() {
//   testWidgets('Loads data from mock api and render product listing',
//       (WidgetTester tester) async {
//     final apiClient = Mock.MockClient();
//     final ProductsApi productsApi = ProductsApi();

//     // await tester.pumpWidget(MaterialApp(
//     //   home: Scaffold(
//     //     body: ProductListing(api: apiClient),
//     //   ),
//     // ));

//     // when(apiClient
//     //         .get(Uri.parse('https://jsonplaceholder.typicode.com/photos')))
//     //     .thenAnswer((realInvocation) async => http.response(200, []));

//     //     expect(await productsApi.getProducts(), is());

//     when(productsApi.getProducts())
//         .thenAnswer((realInvocation) async => http.Response('[]', 200));

//     final response = await productsApi.getProducts();
//     // expect(response, matcher)

//     // expect(find.text("this is mock product"), findsOneWidget);
//   });
}
