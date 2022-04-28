// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkInfo _$WorkInfoFromJson(Map<String, dynamic> json) {
  return _WorkInfo.fromJson(json);
}

/// @nodoc
class _$WorkInfoTearOff {
  const _$WorkInfoTearOff();

  _WorkInfo call(String status, String type, List<String> cities) {
    return _WorkInfo(
      status,
      type,
      cities,
    );
  }

  WorkInfo fromJson(Map<String, Object?> json) {
    return WorkInfo.fromJson(json);
  }
}

/// @nodoc
const $WorkInfo = _$WorkInfoTearOff();

/// @nodoc
mixin _$WorkInfo {
  String get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkInfoCopyWith<WorkInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkInfoCopyWith<$Res> {
  factory $WorkInfoCopyWith(WorkInfo value, $Res Function(WorkInfo) then) =
      _$WorkInfoCopyWithImpl<$Res>;
  $Res call({String status, String type, List<String> cities});
}

/// @nodoc
class _$WorkInfoCopyWithImpl<$Res> implements $WorkInfoCopyWith<$Res> {
  _$WorkInfoCopyWithImpl(this._value, this._then);

  final WorkInfo _value;
  // ignore: unused_field
  final $Res Function(WorkInfo) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WorkInfoCopyWith<$Res> implements $WorkInfoCopyWith<$Res> {
  factory _$WorkInfoCopyWith(_WorkInfo value, $Res Function(_WorkInfo) then) =
      __$WorkInfoCopyWithImpl<$Res>;
  @override
  $Res call({String status, String type, List<String> cities});
}

/// @nodoc
class __$WorkInfoCopyWithImpl<$Res> extends _$WorkInfoCopyWithImpl<$Res>
    implements _$WorkInfoCopyWith<$Res> {
  __$WorkInfoCopyWithImpl(_WorkInfo _value, $Res Function(_WorkInfo) _then)
      : super(_value, (v) => _then(v as _WorkInfo));

  @override
  _WorkInfo get _value => super._value as _WorkInfo;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? cities = freezed,
  }) {
    return _then(_WorkInfo(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkInfo implements _WorkInfo {
  const _$_WorkInfo(this.status, this.type, this.cities);

  factory _$_WorkInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WorkInfoFromJson(json);

  @override
  final String status;
  @override
  final String type;
  @override
  final List<String> cities;

  @override
  String toString() {
    return 'WorkInfo(status: $status, type: $type, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkInfo &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.cities, cities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(cities));

  @JsonKey(ignore: true)
  @override
  _$WorkInfoCopyWith<_WorkInfo> get copyWith =>
      __$WorkInfoCopyWithImpl<_WorkInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkInfoToJson(this);
  }
}

abstract class _WorkInfo implements WorkInfo {
  const factory _WorkInfo(String status, String type, List<String> cities) =
      _$_WorkInfo;

  factory _WorkInfo.fromJson(Map<String, dynamic> json) = _$_WorkInfo.fromJson;

  @override
  String get status;
  @override
  String get type;
  @override
  List<String> get cities;
  @override
  @JsonKey(ignore: true)
  _$WorkInfoCopyWith<_WorkInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
