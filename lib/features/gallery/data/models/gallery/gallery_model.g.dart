// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryModel _$GalleryModelFromJson(Map<String, dynamic> json) => GalleryModel(
      status: json['status'] as String,
      message: json['message'] as String,
      data: GalleryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GalleryModelToJson(GalleryModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

GalleryData _$GalleryDataFromJson(Map<String, dynamic> json) => GalleryData(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GalleryDataToJson(GalleryData instance) =>
    <String, dynamic>{
      'images': instance.images,
    };
