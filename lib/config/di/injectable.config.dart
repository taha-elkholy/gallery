// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../features/auth/data/datasources/local/auth_local_datasource.dart'
    as _i6;
import '../../features/auth/data/datasources/remote/auth_api_service.dart'
    as _i5;
import '../../features/auth/data/datasources/remote/auth_datasource.dart'
    as _i7;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i9;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i8;
import '../../features/auth/domain/usecases/get_token_use_case.dart' as _i10;
import '../../features/auth/domain/usecases/login_use_case.dart' as _i11;
import '../../features/auth/presentation/cubit/auth_cubit/auth_cubit.dart'
    as _i12;
import 'module/dio.dart' as _i13;
import 'module/shared_preferences.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appDioInject = _$AppDioInject();
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.Dio>(() => appDioInject.dio);
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i5.AuthApiService>(_i5.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i6.AuthLocalDatasource>(
      _i6.AuthLocalDatasourceImpl(get<_i4.SharedPreferences>()));
  gh.factory<_i7.AuthRemoteDatasource>(
      () => _i7.AuthRemoteDatasourceImpl(get<_i5.AuthApiService>()));
  gh.factory<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
        get<_i7.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
      ));
  gh.factory<_i10.GetTokenUseCase>(
      () => _i10.GetTokenUseCase(get<_i8.AuthRepository>()));
  gh.factory<_i11.LoginUseCase>(
      () => _i11.LoginUseCase(get<_i8.AuthRepository>()));
  gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(
        get<_i11.LoginUseCase>(),
        get<_i10.GetTokenUseCase>(),
      ));
  return get;
}

class _$AppDioInject extends _i13.AppDioInject {}

class _$InjectionModule extends _i14.InjectionModule {}
