import 'dart:io';

import 'package:gallery/core/error/throw_app_exception.dart';
import 'package:gallery/features/gallery/data/models/gallery/gallery_model.dart';
import 'package:injectable/injectable.dart';

import 'gallery_api_service.dart';

abstract class GalleryRemoteDatasource {
  Future<GalleryModel> getGallery();

  Future<void> uploadImage({required File image});
}

@Injectable(as: GalleryRemoteDatasource)
class GalleryRemoteDatasourceImpl extends GalleryRemoteDatasource {
  final GalleryApiService _galleryApiService;

  GalleryRemoteDatasourceImpl(this._galleryApiService);

  @override
  Future<GalleryModel> getGallery() async {
    try {
      return await _galleryApiService.getGallery();
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<void> uploadImage({required File image}) async {
    try {
      return await _galleryApiService.uploadImage(
        image: image,
      );
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
