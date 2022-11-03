import 'package:gallery/features/auth/data/models/login/login_model.dart';
import 'package:gallery/features/auth/domain/usecases/login_use_case.dart';

extension LoginMapper on LoginParam {
  LoginModel get toModel => LoginModel(
        email: email,
        password: password,
      );
}
