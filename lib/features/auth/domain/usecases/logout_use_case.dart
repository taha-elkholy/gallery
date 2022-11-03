import 'package:gallery/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  Future<bool> call() {
    // we haven't logout end point now
    // so we remove current user from cache
    return _repository.removeCurrentUser();
  }
}
