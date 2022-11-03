import 'package:gallery/core/error/throw_app_exception.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/gallery/data/models/gallery/gallery_model.dart';
import 'package:gallery/features/gallery/domain/usecases/upload_image_use_case.dart';
import 'package:injectable/injectable.dart';

import 'gallery_api_service.dart';

abstract class GalleryRemoteDatasource {
  Future<GalleryModel> getGallery({required String token});

  Future<void> uploadImage({required UploadImageParam uploadImageParam});
}

@Injectable(as: GalleryRemoteDatasource)
class GalleryRemoteDatasourceImpl extends GalleryRemoteDatasource {
  final GalleryApiService _galleryApiService;

  GalleryRemoteDatasourceImpl(this._galleryApiService);

  @override
  Future<GalleryModel> getGallery({required String token}) async {
    try {
      return await _galleryApiService.getGallery(
          token: '${AppStrings.bearer} $token');
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<void> uploadImage({required UploadImageParam uploadImageParam}) async {
    try {
      return await _galleryApiService.uploadImage(
        token: '${AppStrings.bearer} ${uploadImageParam.token}',
        image: uploadImageParam.image,
      );
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
