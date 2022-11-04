import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';

abstract class GalleryRepository {
  Future<Either<AppFailure, Gallery>> getGallery();

  Future<Either<AppFailure, Unit>> uploadImage({required File image});
}
