import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';
import 'package:gallery/features/auth/domain/usecases/login_use_case.dart';

abstract class AuthRepository {
  Future<Either<AppFailure, User>> login({required LoginParam loginParam});

  String? getToken();
  Future<bool> removeToken();
}
