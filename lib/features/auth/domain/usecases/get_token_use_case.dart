import 'package:gallery/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTokenUseCase {
  final AuthRepository _repository;

  GetTokenUseCase(this._repository);

  String? call() {
    return _repository.getToken();
  }
}
