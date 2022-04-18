class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    )
  ];
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
