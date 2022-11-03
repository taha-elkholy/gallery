
import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';
import 'package:gallery/features/gallery/domain/usecases/upload_image_use_case.dart';

abstract class GalleryRepository {
  Future<Either<AppFailure, Gallery>> getGallery({required String token});

  Future<Either<AppFailure, Unit>> uploadImage(
      {required UploadImageParam uploadImageParam});
}
