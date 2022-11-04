import 'dart:convert';

import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/gallery/data/models/gallery/gallery_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class GalleryLocalDatasource {
  Future<bool> saveGallery({required GalleryModel galleryModel});

  GalleryModel? getGallery();
}

@Singleton(as: GalleryLocalDatasource)
class GalleryLocalDatasourceImpl extends GalleryLocalDatasource {
  final SharedPreferences _preferences;

  GalleryLocalDatasourceImpl(this._preferences);

  @override
  GalleryModel? getGallery() {
    final galleryString = _preferences.getString(AppStrings.cachedGalleryKey);
    if (galleryString != null) {
      final jsonGallery = json.decode(galleryString);
      return GalleryModel.fromJson(jsonGallery);
    }
    return null;
  }

  @override
  Future<bool> saveGallery({required GalleryModel galleryModel}) async {
    final galleryString = galleryModel.toJson();
    return await _preferences.setString(
        AppStrings.cachedGalleryKey, json.encode(galleryString));
  }
}
