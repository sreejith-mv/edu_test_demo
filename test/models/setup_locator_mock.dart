import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:edu_test_demo/models/products.dart';

final getItMock = GetIt.instance;

class MockProducts extends Mock implements Products {}

void setupLocatorWithMocks() {
  when(MockProducts().getAllProducts()).thenReturn(['apple']);
  getItMock.registerSingleton<Products>(MockProducts());
}
