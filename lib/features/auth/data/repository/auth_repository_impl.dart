import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/exceptions.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/core/error/return_app_failure.dart';
import 'package:gallery/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:gallery/features/auth/data/datasources/remote/auth_datasource.dart';
import 'package:gallery/features/auth/data/mappers/login_mapper.dart';
import 'package:gallery/features/auth/data/mappers/user_mapper.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';
import 'package:gallery/features/auth/domain/repositories/auth_repository.dart';
import 'package:gallery/features/auth/domain/usecases/login_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;
  final AuthLocalDatasource _authLocalDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource, this._authLocalDatasource);

  @override
  Future<Either<AppFailure, User>> login(
      {required LoginParam loginParam}) async {
    try {
      final userModel =
          await _authRemoteDatasource.login(loginModel: loginParam.toModel);

      await _authLocalDatasource.saveToken(token: userModel.token);

      return right(userModel.user.fromModel);
    } on AppException catch (appException) {
      return left(returnAppFailure(appException));
    }
  }

  @override
  String? getToken() {
    return _authLocalDatasource.getToken();
  }

  @override
  Future<bool> removeToken() async {
    return await _authLocalDatasource.deleteToken();
  }
}
