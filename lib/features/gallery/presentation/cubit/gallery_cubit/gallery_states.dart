import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';

part 'gallery_states.freezed.dart';

@freezed
class GalleryStates with _$GalleryStates {
  const factory GalleryStates.initial() = GalleryInitialState;

  const factory GalleryStates.loading() = GalleryLoadingState;

  const factory GalleryStates.uploaded() = GalleryUploadedState;

  const factory GalleryStates.filePicked() = GalleryFilePickedState;

  const factory GalleryStates.loaded({required Gallery gallery}) =
      GalleryLoadedState;

  const factory GalleryStates.error({required String errorMessage}) =
      GalleryErrorState;
}
