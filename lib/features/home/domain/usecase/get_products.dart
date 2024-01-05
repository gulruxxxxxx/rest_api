import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/product.dart';
import '../repository/product.dart';

class GetNewsUseCase implements UseCase<List<ProductEntity>,NoParams>{
  final ProductRepository _repository;
  GetNewsUseCase(ProductRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) {
    return _repository.getProducts();
  }
}