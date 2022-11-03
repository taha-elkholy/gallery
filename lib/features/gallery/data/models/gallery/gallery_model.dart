import 'package:json_annotation/json_annotation.dart';

part 'gallery_model.g.dart';

@JsonSerializable()
class GalleryModel {
  final String status;
  final String message;
  final GalleryData data;

  const GalleryModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory GalleryModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryModelFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryModelToJson(this);
}

@JsonSerializable()
class GalleryData {
  final List<String> images;

  const GalleryData({required this.images});

  factory GalleryData.fromJson(Map<String, dynamic> json) =>
      _$GalleryDataFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryDataToJson(this);
}
