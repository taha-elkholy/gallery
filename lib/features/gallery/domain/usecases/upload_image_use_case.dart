import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/features/gallery/domain/repositories/gallery_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadImageUseCase implements UseCase<Unit, File> {
  final GalleryRepository _galleryRepository;

  UploadImageUseCase(this._galleryRepository);

  @override
  Future<Either<AppFailure, Unit>> call(File param) {
    return _galleryRepository.uploadImage(image: param);
  }
}
