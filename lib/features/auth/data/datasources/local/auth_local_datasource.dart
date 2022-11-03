import 'package:gallery/core/utils/app_strings.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDatasource {
  Future<bool> saveToken({required String token});

  String? getToken();

  Future<bool> deleteToken();
}

@Singleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl extends AuthLocalDatasource {
  final SharedPreferences _preferences;

  AuthLocalDatasourceImpl(this._preferences);

  @override
  Future<bool> deleteToken() async {
    return await _preferences.remove(AppStrings.tokenKey);
  }

  @override
  String? getToken() {
    return _preferences.getString(AppStrings.tokenKey);
  }

  @override
  Future<bool> saveToken({required String token}) async {
    return await _preferences.setString(
        AppStrings.tokenKey, token);
  }
}
