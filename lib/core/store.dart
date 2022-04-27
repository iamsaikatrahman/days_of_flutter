import 'package:days_of_flutter/models/cart.dart';
import 'package:days_of_flutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
  }
}
