class CatalogModel {
  // static final catModel = CatalogModel._internal();
  // CatalogModel._internal();
  // factory CatalogModel() => CatalogModel();
  static List<Item>? items;

  // Get Item by ID
  Item getById(int id) => items!.firstWhere(
        (element) => element.id == id,
        orElse: null,
      );

  // Get Item by position
  Item getByPostion(int pos) => items![pos];
}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final String? image;
  final String? color;
  final num? price;

  Item({
    this.id,
    this.name,
    this.desc,
    this.image,
    this.color,
    this.price,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      image: map['image'],
      color: map['color'],
      price: map['price'],
    );
  }
  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'image': image,
        'color': color,
        'price': price,
      };
}
