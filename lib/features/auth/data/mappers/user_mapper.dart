import 'package:gallery/features/auth/data/models/user/user_model.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';

extension UserMapper on UserModel {
  User get fromModel => User(
        name: user.name,
        email: user.email,
        token: token,
      );
}
