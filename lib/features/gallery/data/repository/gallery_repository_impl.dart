import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/exceptions.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/core/error/return_app_failure.dart';
import 'package:gallery/features/gallery/data/datasources/local/gallery_local_datasource.dart';
import 'package:gallery/features/gallery/data/datasources/remote/gallery_remote_datasource.dart';
import 'package:gallery/features/gallery/data/mappers/gallery_mapper.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';
import 'package:gallery/features/gallery/domain/repositories/gallery_repository.dart';
import 'package:gallery/features/gallery/domain/usecases/upload_image_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GalleryRepository)
class GalleryRepositoryImpl implements GalleryRepository {
  final GalleryRemoteDatasource _remoteDatasource;
  final GalleryLocalDatasource _localDatasource;

  GalleryRepositoryImpl(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<AppFailure, Gallery>> getGallery(
      {required String token}) async {
    try {
      final galleryModel = await _remoteDatasource.getGallery(token: token);

      await _localDatasource.saveGallery(
        galleryModel: galleryModel,
      );

      return right(galleryModel.fromModel);
    } on AppException catch (appException) {
      if (appException is NetworkException) {
        final galleryModel = _localDatasource.getGallery();
        if (galleryModel != null) {
          return right(galleryModel.fromModel);
        }
      }
      return left(returnAppFailure(appException));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> uploadImage(
      {required UploadImageParam uploadImageParam}) async {
    try {
      await _remoteDatasource.uploadImage(
        uploadImageParam: uploadImageParam,
      );

      return right(unit);
    } on AppException catch (appException) {
      return left(returnAppFailure(appException));
    }
  }
}
