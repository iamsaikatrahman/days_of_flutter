import './catalog.dart';

class CartModel {
  // Catalog field
  CatalogModel? _catalog;
  // colletion of id store Id of each item
  final List<int> _itemsId = [];
  // get catalog
  CatalogModel get catalog => _catalog!;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // get item in the cart
  List<Item> get items => _itemsId.map((id) => _catalog!.getById(id)).toList();

  // get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price!);

  // add item
  void add(Item item) {
    _itemsId.add(item.id!);
  }

  // remove item
  void remove(Item item) {
    _itemsId.remove(item.id);
  }
}


// Useful List methods in Dart: https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d