import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gallery/core/api/end_points.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/gallery/data/models/gallery/gallery_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'gallery_api_service.g.dart';

@singleton
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class GalleryApiService {
  @factoryMethod
  factory GalleryApiService(Dio dio) = _GalleryApiService;

  @GET(EndPoints.myGallery)
  Future<GalleryModel> getGallery(
      {@Header(AppStrings.authorization) required String token});

  @POST(EndPoints.upload)
  Future<void> uploadImage({
    @Header(AppStrings.authorization) required String token,
    @Part() required File image,
  });
}
