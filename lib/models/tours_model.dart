class Tours {
  final String? id;
  final String? imgUrl;
  final String? name;
  final String? duration;
  final String? price;
  final String? shortDes;
  final String? description;
  final String? country;

  Tours({
    this.id,
    this.imgUrl,
    this.name,
    this.duration,
    this.price,
    this.shortDes,
    this.description,
    this.country,
  });
  factory Tours.fromJson(Map<String, dynamic> json) {
    return Tours(
      id: json['_id'],
      imgUrl: json['imgUrl'],
      duration: json['duration'],
      price: json['price'],
      shortDes: json['shortDes'],
      description: json['description'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'imgUrl': imgUrl,
        'duration': duration,
        'price': price,
        'shortDes': shortDes,
        'description': description,
        'country': country,
      };
}
