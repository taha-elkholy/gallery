import 'package:gallery/features/auth/data/models/user/user_model.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';

extension UserMapper on UserData {
  User get fromModel => User(
        name: name,
        email: email,
      );
}
