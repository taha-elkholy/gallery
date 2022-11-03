// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/auth/data/datasources/local/auth_local_datasource.dart'
    as _i8;
import '../../features/auth/data/datasources/remote/auth_api_service.dart'
    as _i7;
import '../../features/auth/data/datasources/remote/auth_datasource.dart'
    as _i9;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i11;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i10;
import '../../features/auth/domain/usecases/get_current_user_use_case.dart'
    as _i15;
import '../../features/auth/domain/usecases/login_use_case.dart' as _i17;
import '../../features/auth/domain/usecases/logout_use_case.dart' as _i18;
import '../../features/auth/presentation/cubit/auth_cubit/auth_cubit.dart'
    as _i20;
import '../../features/gallery/data/datasources/local/gallery_local_datasource.dart'
    as _i12;
import '../../features/gallery/data/datasources/remote/gallery_api_service.dart'
    as _i4;
import '../../features/gallery/data/datasources/remote/gallery_remote_datasource.dart'
    as _i5;
import '../../features/gallery/data/repository/gallery_repository_impl.dart'
    as _i14;
import '../../features/gallery/domain/repositories/gallery_repository.dart'
    as _i13;
import '../../features/gallery/domain/usecases/get_gallery_use_case.dart'
    as _i16;
import '../../features/gallery/domain/usecases/upload_image_use_case.dart'
    as _i19;
import '../../features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart'
    as _i21;
import 'module/dio.dart' as _i22;
import 'module/shared_preferences.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i4.GalleryApiService>(_i4.GalleryApiService(get<_i3.Dio>()));
  gh.factory<_i5.GalleryRemoteDatasource>(
      () => _i5.GalleryRemoteDatasourceImpl(get<_i4.GalleryApiService>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i7.AuthApiService>(_i7.AuthApiService(get<_i3.Dio>()));
  gh.singleton<_i8.AuthLocalDatasource>(
      _i8.AuthLocalDatasourceImpl(get<_i6.SharedPreferences>()));
  gh.factory<_i9.AuthRemoteDatasource>(
      () => _i9.AuthRemoteDatasourceImpl(get<_i7.AuthApiService>()));
  gh.factory<_i10.AuthRepository>(() => _i11.AuthRepositoryImpl(
        get<_i9.AuthRemoteDatasource>(),
        get<_i8.AuthLocalDatasource>(),
      ));
  gh.singleton<_i12.GalleryLocalDatasource>(
      _i12.GalleryLocalDatasourceImpl(get<_i6.SharedPreferences>()));
  gh.factory<_i13.GalleryRepository>(() => _i14.GalleryRepositoryImpl(
        get<_i5.GalleryRemoteDatasource>(),
        get<_i12.GalleryLocalDatasource>(),
      ));
  gh.factory<_i15.GetCurrentUserUseCase>(
      () => _i15.GetCurrentUserUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i16.GetGalleryUseCase>(
      () => _i16.GetGalleryUseCase(get<_i13.GalleryRepository>()));
  gh.factory<_i17.LoginUseCase>(
      () => _i17.LoginUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i18.LogoutUseCase>(
      () => _i18.LogoutUseCase(get<_i10.AuthRepository>()));
  gh.factory<_i19.UploadImageUseCase>(
      () => _i19.UploadImageUseCase(get<_i13.GalleryRepository>()));
  gh.factory<_i20.AuthCubit>(() => _i20.AuthCubit(
        get<_i17.LoginUseCase>(),
        get<_i15.GetCurrentUserUseCase>(),
        get<_i18.LogoutUseCase>(),
      ));
  gh.factory<_i21.GalleryCubit>(() => _i21.GalleryCubit(
        get<_i16.GetGalleryUseCase>(),
        get<_i19.UploadImageUseCase>(),
      ));
  return get;
}

class _$AppDioInject extends _i22.AppDioInject {}

class _$InjectionModule extends _i23.InjectionModule {}
