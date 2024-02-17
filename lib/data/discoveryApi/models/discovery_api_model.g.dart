// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovery_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscoveryApiResponseModelImpl _$$DiscoveryApiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscoveryApiResponseModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DiscoveryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$DiscoveryApiResponseModelImplToJson(
        _$DiscoveryApiResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'page': instance.page,
      'count': instance.count,
    };

_$DiscoveryItemImpl _$$DiscoveryItemImplFromJson(Map<String, dynamic> json) =>
    _$DiscoveryItemImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$DiscoveryItemImplToJson(_$DiscoveryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
