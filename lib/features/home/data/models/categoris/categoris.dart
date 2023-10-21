
import 'package:equatable/equatable.dart';

class Categoris extends Equatable {
	final String? id;
	final DateTime? createdAt;
	final String? title;
	final String? image;
	final int? numOfProducts;

	const Categoris({
		this.id, 
		this.createdAt, 
		this.title, 
		this.image, 
		this.numOfProducts, 
	});

	factory Categoris.fromMap(Map<String, dynamic> data) => Categoris(
				id: data['id'] as String?,
				createdAt: data['createdAt'] == null
						? null
						: DateTime.parse(data['createdAt'] as String),
				title: data['title'] as String?,
				image: data['image'] as String?,
				numOfProducts: data['numOfProducts'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'createdAt': createdAt?.toIso8601String(),
				'title': title,
				'image': image,
				'numOfProducts': numOfProducts,
			};

	Categoris copyWith({
		String? id,
		DateTime? createdAt,
		String? title,
		String? image,
		int? numOfProducts,
	}) {
		return Categoris(
			id: id ?? this.id,
			createdAt: createdAt ?? this.createdAt,
			title: title ?? this.title,
			image: image ?? this.image,
			numOfProducts: numOfProducts ?? this.numOfProducts,
		);
	}

	@override
	List<Object?> get props => [id, createdAt, title, image, numOfProducts];
}
