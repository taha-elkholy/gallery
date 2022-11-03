import 'package:dartz/dartz.dart';
import 'package:gallery/core/error/failure.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';
import 'package:gallery/features/gallery/domain/repositories/gallery_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGalleryUseCase implements UseCase<Gallery, String> {
  final GalleryRepository _galleryRepository;

  GetGalleryUseCase(this._galleryRepository);

  @override
  Future<Either<AppFailure, Gallery>> call(String param) {
    return _galleryRepository.getGallery(token: param);
  }
}
