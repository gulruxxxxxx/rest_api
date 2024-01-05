// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      description: json['description'] as String? ?? '',
      category: json['category'] as String? ?? '',
      image: json['image'] as String? ?? '',
      productRatingModel:
          ProductRatingModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.productRatingModel,
    };

ProductRatingModel _$ProductRatingModelFromJson(Map<String, dynamic> json) =>
    ProductRatingModel(
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$ProductRatingModelToJson(ProductRatingModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
