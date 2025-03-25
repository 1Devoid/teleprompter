import 'package:either_dart/either.dart';
import 'package:teleprompter/app/data/datasources/account_datasource.dart';
import 'package:teleprompter/common/models/user.dart';

abstract class IAccountRepository {
  Future<Either<dynamic, User>> getUser();
}

class AccountRepository extends IAccountRepository {
  AccountRepository(this._dataSource);
  final IAccountDataSource _dataSource;

  @override
  Future<Either<void, User>> getUser() async {
    try {
      final result = await _dataSource.getUser();
      return Right(result);
    } catch (e) {
      return Left(e);
    }
  }
}
