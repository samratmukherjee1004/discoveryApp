// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscoveryApiResponseModel _$DiscoveryApiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DiscoveryApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DiscoveryApiResponseModel {
  @JsonKey(name: "data")
  List<DiscoveryItem>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoveryApiResponseModelCopyWith<DiscoveryApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryApiResponseModelCopyWith<$Res> {
  factory $DiscoveryApiResponseModelCopyWith(DiscoveryApiResponseModel value,
          $Res Function(DiscoveryApiResponseModel) then) =
      _$DiscoveryApiResponseModelCopyWithImpl<$Res, DiscoveryApiResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DiscoveryItem>? data,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$DiscoveryApiResponseModelCopyWithImpl<$Res,
        $Val extends DiscoveryApiResponseModel>
    implements $DiscoveryApiResponseModelCopyWith<$Res> {
  _$DiscoveryApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DiscoveryItem>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoveryApiResponseModelImplCopyWith<$Res>
    implements $DiscoveryApiResponseModelCopyWith<$Res> {
  factory _$$DiscoveryApiResponseModelImplCopyWith(
          _$DiscoveryApiResponseModelImpl value,
          $Res Function(_$DiscoveryApiResponseModelImpl) then) =
      __$$DiscoveryApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DiscoveryItem>? data,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$DiscoveryApiResponseModelImplCopyWithImpl<$Res>
    extends _$DiscoveryApiResponseModelCopyWithImpl<$Res,
        _$DiscoveryApiResponseModelImpl>
    implements _$$DiscoveryApiResponseModelImplCopyWith<$Res> {
  __$$DiscoveryApiResponseModelImplCopyWithImpl(
      _$DiscoveryApiResponseModelImpl _value,
      $Res Function(_$DiscoveryApiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? count = freezed,
  }) {
    return _then(_$DiscoveryApiResponseModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DiscoveryItem>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscoveryApiResponseModelImpl implements _DiscoveryApiResponseModel {
  const _$DiscoveryApiResponseModelImpl(
      {@JsonKey(name: "data") final List<DiscoveryItem>? data,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "count") this.count})
      : _data = data;

  factory _$DiscoveryApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscoveryApiResponseModelImplFromJson(json);

  final List<DiscoveryItem>? _data;
  @override
  @JsonKey(name: "data")
  List<DiscoveryItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'DiscoveryApiResponseModel(data: $data, page: $page, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoveryApiResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoveryApiResponseModelImplCopyWith<_$DiscoveryApiResponseModelImpl>
      get copyWith => __$$DiscoveryApiResponseModelImplCopyWithImpl<
          _$DiscoveryApiResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscoveryApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DiscoveryApiResponseModel implements DiscoveryApiResponseModel {
  const factory _DiscoveryApiResponseModel(
          {@JsonKey(name: "data") final List<DiscoveryItem>? data,
          @JsonKey(name: "page") final int? page,
          @JsonKey(name: "count") final int? count}) =
      _$DiscoveryApiResponseModelImpl;

  factory _DiscoveryApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$DiscoveryApiResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DiscoveryItem>? get data;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$DiscoveryApiResponseModelImplCopyWith<_$DiscoveryApiResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscoveryItem _$DiscoveryItemFromJson(Map<String, dynamic> json) {
  return _DiscoveryItem.fromJson(json);
}

/// @nodoc
mixin _$DiscoveryItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoveryItemCopyWith<DiscoveryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryItemCopyWith<$Res> {
  factory $DiscoveryItemCopyWith(
          DiscoveryItem value, $Res Function(DiscoveryItem) then) =
      _$DiscoveryItemCopyWithImpl<$Res, DiscoveryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class _$DiscoveryItemCopyWithImpl<$Res, $Val extends DiscoveryItem>
    implements $DiscoveryItemCopyWith<$Res> {
  _$DiscoveryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoveryItemImplCopyWith<$Res>
    implements $DiscoveryItemCopyWith<$Res> {
  factory _$$DiscoveryItemImplCopyWith(
          _$DiscoveryItemImpl value, $Res Function(_$DiscoveryItemImpl) then) =
      __$$DiscoveryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class __$$DiscoveryItemImplCopyWithImpl<$Res>
    extends _$DiscoveryItemCopyWithImpl<$Res, _$DiscoveryItemImpl>
    implements _$$DiscoveryItemImplCopyWith<$Res> {
  __$$DiscoveryItemImplCopyWithImpl(
      _$DiscoveryItemImpl _value, $Res Function(_$DiscoveryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$DiscoveryItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscoveryItemImpl implements _DiscoveryItem {
  const _$DiscoveryItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "image_url") this.imageUrl});

  factory _$DiscoveryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscoveryItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;

  @override
  String toString() {
    return 'DiscoveryItem(id: $id, title: $title, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoveryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoveryItemImplCopyWith<_$DiscoveryItemImpl> get copyWith =>
      __$$DiscoveryItemImplCopyWithImpl<_$DiscoveryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscoveryItemImplToJson(
      this,
    );
  }
}

abstract class _DiscoveryItem implements DiscoveryItem {
  const factory _DiscoveryItem(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "image_url") final String? imageUrl}) =
      _$DiscoveryItemImpl;

  factory _DiscoveryItem.fromJson(Map<String, dynamic> json) =
      _$DiscoveryItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$DiscoveryItemImplCopyWith<_$DiscoveryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
