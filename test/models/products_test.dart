import 'package:edu_test_demo/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'setup_locator_mock.dart';

void main() {
  setUpAll(() => setupLocatorWithMocks());

  tearDownAll(() => getItMock.reset());

  testWidgets('Product Widgets', (widgetTester) async {
    await widgetTester.pumpWidget(const ProductDetails());

    expect(find.text('apple'), findsOneWidget);
  });
}
