import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';
import 'package:gallery/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase implements UseCase<User, LoginParam> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<AppFailure, User>> call(LoginParam param) {
    return _repository.login(loginParam: param);
  }
}

class LoginParam extends Equatable {
  final String email;
  final String password;

  const LoginParam({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
