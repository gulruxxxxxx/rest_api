import 'package:dio/dio.dart';

import '../../../../core/either/either.dart';
import '../../../../core/exception/exception.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/repository/product.dart';
import '../data_source/remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final remoteDataSource = HomeRemoteDataSource(Dio());

  @override
  Future<Either<ServerFailure, List<ProductEntity>>> getProducts() async {
    try {
      final response = await remoteDataSource.getProducts();
      final productEntities = response.map((productModel) =>
          ProductEntity(
            image: productModel.image,
            title: productModel.title,
            description: productModel.description,
            price: productModel.price,
          ),
      ).toList();

      return Right(productEntities);
    } on ServerException catch (exception) {
      return Left(ServerFailure.fromServerException(exception));
    }
  }
}
