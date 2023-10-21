import 'package:equatable/equatable.dart';

class Products extends Equatable {
  final String? id;
  final DateTime? createdAt;
  final String? title;
  final int? price;
  final String? category;
  final String? image;
  final String? subTitle;
  final String? description;

  const Products({
    this.id,
    this.createdAt,
    this.title,
    this.price,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json['id'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        title: json['title'] as String?,
        price: json['price'] as int?,
        category: json['category'] as String?,
        image: json['image'] as String?,
        subTitle: json['subTitle'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'title': title,
        'price': price,
        'category': category,
        'image': image,
        'subTitle': subTitle,
        'description': description,
      };

  Products copyWith({
    String? id,
    DateTime? createdAt,
    String? title,
    int? price,
    String? category,
    String? image,
    String? subTitle,
    String? description,
  }) {
    return Products(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      title: title ?? this.title,
      price: price ?? this.price,
      category: category ?? this.category,
      image: image ?? this.image,
      subTitle: subTitle ?? this.subTitle,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      createdAt,
      title,
      price,
      category,
      image,
      subTitle,
      description,
    ];
  }
}
