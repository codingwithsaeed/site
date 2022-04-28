// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
class _$PersonalInfoTearOff {
  const _$PersonalInfoTearOff();

  _PersonalInfo call(String age, String martial, String military, String sex) {
    return _PersonalInfo(
      age,
      martial,
      military,
      sex,
    );
  }

  PersonalInfo fromJson(Map<String, Object?> json) {
    return PersonalInfo.fromJson(json);
  }
}

/// @nodoc
const $PersonalInfo = _$PersonalInfoTearOff();

/// @nodoc
mixin _$PersonalInfo {
  String get age => throw _privateConstructorUsedError;
  String get martial => throw _privateConstructorUsedError;
  String get military => throw _privateConstructorUsedError;
  String get sex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res>;
  $Res call({String age, String martial, String military, String sex});
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  final PersonalInfo _value;
  // ignore: unused_field
  final $Res Function(PersonalInfo) _then;

  @override
  $Res call({
    Object? age = freezed,
    Object? martial = freezed,
    Object? military = freezed,
    Object? sex = freezed,
  }) {
    return _then(_value.copyWith(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      martial: martial == freezed
          ? _value.martial
          : martial // ignore: cast_nullable_to_non_nullable
              as String,
      military: military == freezed
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$PersonalInfoCopyWith(
          _PersonalInfo value, $Res Function(_PersonalInfo) then) =
      __$PersonalInfoCopyWithImpl<$Res>;
  @override
  $Res call({String age, String martial, String military, String sex});
}

/// @nodoc
class __$PersonalInfoCopyWithImpl<$Res> extends _$PersonalInfoCopyWithImpl<$Res>
    implements _$PersonalInfoCopyWith<$Res> {
  __$PersonalInfoCopyWithImpl(
      _PersonalInfo _value, $Res Function(_PersonalInfo) _then)
      : super(_value, (v) => _then(v as _PersonalInfo));

  @override
  _PersonalInfo get _value => super._value as _PersonalInfo;

  @override
  $Res call({
    Object? age = freezed,
    Object? martial = freezed,
    Object? military = freezed,
    Object? sex = freezed,
  }) {
    return _then(_PersonalInfo(
      age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      martial == freezed
          ? _value.martial
          : martial // ignore: cast_nullable_to_non_nullable
              as String,
      military == freezed
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as String,
      sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo implements _PersonalInfo {
  const _$_PersonalInfo(this.age, this.martial, this.military, this.sex);

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInfoFromJson(json);

  @override
  final String age;
  @override
  final String martial;
  @override
  final String military;
  @override
  final String sex;

  @override
  String toString() {
    return 'PersonalInfo(age: $age, martial: $martial, military: $military, sex: $sex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonalInfo &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.martial, martial) &&
            const DeepCollectionEquality().equals(other.military, military) &&
            const DeepCollectionEquality().equals(other.sex, sex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(martial),
      const DeepCollectionEquality().hash(military),
      const DeepCollectionEquality().hash(sex));

  @JsonKey(ignore: true)
  @override
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      __$PersonalInfoCopyWithImpl<_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInfoToJson(this);
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  const factory _PersonalInfo(
          String age, String martial, String military, String sex) =
      _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  String get age;
  @override
  String get martial;
  @override
  String get military;
  @override
  String get sex;
  @override
  @JsonKey(ignore: true)
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
