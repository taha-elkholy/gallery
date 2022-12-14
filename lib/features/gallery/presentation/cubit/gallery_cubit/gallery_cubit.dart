import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/features/gallery/domain/usecases/get_gallery_use_case.dart';
import 'package:gallery/features/gallery/domain/usecases/upload_image_use_case.dart';
import 'package:gallery/features/gallery/presentation/cubit/gallery_cubit/gallery_states.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class GalleryCubit extends Cubit<GalleryStates> {
  GalleryCubit(
    this._getGalleryUseCase,
    this._uploadImageUseCase,
  ) : super(const GalleryStates.initial());

  final GetGalleryUseCase _getGalleryUseCase;
  final UploadImageUseCase _uploadImageUseCase;

  Future<void> uploadImage({required File image}) async {
    emit(const GalleryStates.loading());
    final result = await _uploadImageUseCase(image);
    emit(
      result.fold(
        (failure) => GalleryStates.error(
          errorMessage: failure.errorMessage,
        ),
        (_) => const GalleryStates.uploaded(),
      ),
    );
  }

  Future<void> getGallery() async {
    emit(const GalleryStates.loading());
    final result = await _getGalleryUseCase(NoParam());
    emit(
      result.fold(
        (failure) => GalleryStates.error(
          errorMessage: failure.errorMessage,
        ),
        (gallery) => GalleryStates.loaded(gallery: gallery),
      ),
    );
  }

  File? imageFile;

  Future<void> pickMyImage({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      emit(const GalleryStates.filePicked());
    }
  }
}
