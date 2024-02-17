// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'discovery_api_model.freezed.dart';
part 'discovery_api_model.g.dart';

DiscoveryApiResponseModel discoveryApiResponseModelFromJson(String str) => DiscoveryApiResponseModel.fromJson(json.decode(str));
String discoveryApiResponseModelToJson(DiscoveryApiResponseModel data) => json.encode(data.toJson());

@freezed
class DiscoveryApiResponseModel with _$DiscoveryApiResponseModel {
    const factory DiscoveryApiResponseModel({
        @JsonKey(name: "data")
        List<DiscoveryItem>? data,
        @JsonKey(name: "page")
        int? page,
        @JsonKey(name: "count")
        int? count,
    }) = _DiscoveryApiResponseModel;

    factory DiscoveryApiResponseModel.fromJson(Map<String, dynamic> json) => _$DiscoveryApiResponseModelFromJson(json);
}

@freezed
class DiscoveryItem with _$DiscoveryItem {
    const factory DiscoveryItem({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "image_url")
        String? imageUrl,
    }) = _DiscoveryItem;

    factory DiscoveryItem.fromJson(Map<String, dynamic> json) => _$DiscoveryItemFromJson(json);
}
