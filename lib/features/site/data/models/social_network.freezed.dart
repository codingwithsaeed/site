// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_network.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialNetwork _$SocialNetworkFromJson(Map<String, dynamic> json) {
  return _SocialNetwork.fromJson(json);
}

/// @nodoc
class _$SocialNetworkTearOff {
  const _$SocialNetworkTearOff();

  _SocialNetwork call(String title, String logo, String link) {
    return _SocialNetwork(
      title,
      logo,
      link,
    );
  }

  SocialNetwork fromJson(Map<String, Object?> json) {
    return SocialNetwork.fromJson(json);
  }
}

/// @nodoc
const $SocialNetwork = _$SocialNetworkTearOff();

/// @nodoc
mixin _$SocialNetwork {
  String get title => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialNetworkCopyWith<SocialNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialNetworkCopyWith<$Res> {
  factory $SocialNetworkCopyWith(
          SocialNetwork value, $Res Function(SocialNetwork) then) =
      _$SocialNetworkCopyWithImpl<$Res>;
  $Res call({String title, String logo, String link});
}

/// @nodoc
class _$SocialNetworkCopyWithImpl<$Res>
    implements $SocialNetworkCopyWith<$Res> {
  _$SocialNetworkCopyWithImpl(this._value, this._then);

  final SocialNetwork _value;
  // ignore: unused_field
  final $Res Function(SocialNetwork) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? logo = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SocialNetworkCopyWith<$Res>
    implements $SocialNetworkCopyWith<$Res> {
  factory _$SocialNetworkCopyWith(
          _SocialNetwork value, $Res Function(_SocialNetwork) then) =
      __$SocialNetworkCopyWithImpl<$Res>;
  @override
  $Res call({String title, String logo, String link});
}

/// @nodoc
class __$SocialNetworkCopyWithImpl<$Res>
    extends _$SocialNetworkCopyWithImpl<$Res>
    implements _$SocialNetworkCopyWith<$Res> {
  __$SocialNetworkCopyWithImpl(
      _SocialNetwork _value, $Res Function(_SocialNetwork) _then)
      : super(_value, (v) => _then(v as _SocialNetwork));

  @override
  _SocialNetwork get _value => super._value as _SocialNetwork;

  @override
  $Res call({
    Object? title = freezed,
    Object? logo = freezed,
    Object? link = freezed,
  }) {
    return _then(_SocialNetwork(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialNetwork implements _SocialNetwork {
  const _$_SocialNetwork(this.title, this.logo, this.link);

  factory _$_SocialNetwork.fromJson(Map<String, dynamic> json) =>
      _$$_SocialNetworkFromJson(json);

  @override
  final String title;
  @override
  final String logo;
  @override
  final String link;

  @override
  String toString() {
    return 'SocialNetwork(title: $title, logo: $logo, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialNetwork &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$SocialNetworkCopyWith<_SocialNetwork> get copyWith =>
      __$SocialNetworkCopyWithImpl<_SocialNetwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialNetworkToJson(this);
  }
}

abstract class _SocialNetwork implements SocialNetwork {
  const factory _SocialNetwork(String title, String logo, String link) =
      _$_SocialNetwork;

  factory _SocialNetwork.fromJson(Map<String, dynamic> json) =
      _$_SocialNetwork.fromJson;

  @override
  String get title;
  @override
  String get logo;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$SocialNetworkCopyWith<_SocialNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}
