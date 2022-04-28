// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
class _$ContactInfoTearOff {
  const _$ContactInfoTearOff();

  _ContactInfo call(String phone, String email, String address) {
    return _ContactInfo(
      phone,
      email,
      address,
    );
  }

  ContactInfo fromJson(Map<String, Object?> json) {
    return ContactInfo.fromJson(json);
  }
}

/// @nodoc
const $ContactInfo = _$ContactInfoTearOff();

/// @nodoc
mixin _$ContactInfo {
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res>;
  $Res call({String phone, String email, String address});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res> implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  final ContactInfo _value;
  // ignore: unused_field
  final $Res Function(ContactInfo) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactInfoCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(
          _ContactInfo value, $Res Function(_ContactInfo) then) =
      __$ContactInfoCopyWithImpl<$Res>;
  @override
  $Res call({String phone, String email, String address});
}

/// @nodoc
class __$ContactInfoCopyWithImpl<$Res> extends _$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(
      _ContactInfo _value, $Res Function(_ContactInfo) _then)
      : super(_value, (v) => _then(v as _ContactInfo));

  @override
  _ContactInfo get _value => super._value as _ContactInfo;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
  }) {
    return _then(_ContactInfo(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactInfo implements _ContactInfo {
  const _$_ContactInfo(this.phone, this.email, this.address);

  factory _$_ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ContactInfoFromJson(json);

  @override
  final String phone;
  @override
  final String email;
  @override
  final String address;

  @override
  String toString() {
    return 'ContactInfo(phone: $phone, email: $email, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactInfo &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$ContactInfoCopyWith<_ContactInfo> get copyWith =>
      __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactInfoToJson(this);
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(String phone, String email, String address) =
      _$_ContactInfo;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$_ContactInfo.fromJson;

  @override
  String get phone;
  @override
  String get email;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$ContactInfoCopyWith<_ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
