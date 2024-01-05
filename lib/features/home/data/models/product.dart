import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';
@JsonSerializable()
class ProductModel{
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: 0)
  final double price;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: '')
  final String category;
  @JsonKey(defaultValue: '')
  final String image;
  @JsonKey(name: 'rating')
  final ProductRatingModel  productRatingModel;

  const ProductModel({required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category, required this.image,
    required this.productRatingModel
  });
  factory ProductModel.fromJson(Map<String,dynamic> data) =>
      _$ProductModelFromJson(data);
  Map<String,dynamic> toMap()=> _$ProductModelToJson(this);
}
@JsonSerializable()
class ProductRatingModel {
  @JsonKey(defaultValue: 0)
  final double rate;
  @JsonKey(defaultValue: 0)
  final int count;

  ProductRatingModel({
    required this.rate,
    required this.count
  });

  factory ProductRatingModel.fromJson(Map<String,dynamic> data) =>
      _$ProductRatingModelFromJson(data);
  Map<String,dynamic> toMap()=> _$ProductRatingModelToJson(this);
}