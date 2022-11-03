import 'package:gallery/features/gallery/data/models/gallery/gallery_model.dart';
import 'package:gallery/features/gallery/domain/entities/gallery.dart';

extension GalleryMapper on GalleryModel {
  Gallery get fromModel => Gallery(images: data.images);
}
