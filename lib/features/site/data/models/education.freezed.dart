// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
class _$EducationTearOff {
  const _$EducationTearOff();

  _Education call(String grade, String field, String university,
      String universityWebsite, String startYear, String endYear, String gpa) {
    return _Education(
      grade,
      field,
      university,
      universityWebsite,
      startYear,
      endYear,
      gpa,
    );
  }

  Education fromJson(Map<String, Object?> json) {
    return Education.fromJson(json);
  }
}

/// @nodoc
const $Education = _$EducationTearOff();

/// @nodoc
mixin _$Education {
  String get grade => throw _privateConstructorUsedError;
  String get field => throw _privateConstructorUsedError;
  String get university => throw _privateConstructorUsedError;
  String get universityWebsite => throw _privateConstructorUsedError;
  String get startYear => throw _privateConstructorUsedError;
  String get endYear => throw _privateConstructorUsedError;
  String get gpa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res>;
  $Res call(
      {String grade,
      String field,
      String university,
      String universityWebsite,
      String startYear,
      String endYear,
      String gpa});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res> implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  final Education _value;
  // ignore: unused_field
  final $Res Function(Education) _then;

  @override
  $Res call({
    Object? grade = freezed,
    Object? field = freezed,
    Object? university = freezed,
    Object? universityWebsite = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? gpa = freezed,
  }) {
    return _then(_value.copyWith(
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      universityWebsite: universityWebsite == freezed
          ? _value.universityWebsite
          : universityWebsite // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      gpa: gpa == freezed
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EducationCopyWith<$Res> implements $EducationCopyWith<$Res> {
  factory _$EducationCopyWith(
          _Education value, $Res Function(_Education) then) =
      __$EducationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String grade,
      String field,
      String university,
      String universityWebsite,
      String startYear,
      String endYear,
      String gpa});
}

/// @nodoc
class __$EducationCopyWithImpl<$Res> extends _$EducationCopyWithImpl<$Res>
    implements _$EducationCopyWith<$Res> {
  __$EducationCopyWithImpl(_Education _value, $Res Function(_Education) _then)
      : super(_value, (v) => _then(v as _Education));

  @override
  _Education get _value => super._value as _Education;

  @override
  $Res call({
    Object? grade = freezed,
    Object? field = freezed,
    Object? university = freezed,
    Object? universityWebsite = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? gpa = freezed,
  }) {
    return _then(_Education(
      grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      universityWebsite == freezed
          ? _value.universityWebsite
          : universityWebsite // ignore: cast_nullable_to_non_nullable
              as String,
      startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      gpa == freezed
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Education implements _Education {
  const _$_Education(this.grade, this.field, this.university,
      this.universityWebsite, this.startYear, this.endYear, this.gpa);

  factory _$_Education.fromJson(Map<String, dynamic> json) =>
      _$$_EducationFromJson(json);

  @override
  final String grade;
  @override
  final String field;
  @override
  final String university;
  @override
  final String universityWebsite;
  @override
  final String startYear;
  @override
  final String endYear;
  @override
  final String gpa;

  @override
  String toString() {
    return 'Education(grade: $grade, field: $field, university: $university, universityWebsite: $universityWebsite, startYear: $startYear, endYear: $endYear, gpa: $gpa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Education &&
            const DeepCollectionEquality().equals(other.grade, grade) &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality()
                .equals(other.university, university) &&
            const DeepCollectionEquality()
                .equals(other.universityWebsite, universityWebsite) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality().equals(other.gpa, gpa));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(grade),
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(university),
      const DeepCollectionEquality().hash(universityWebsite),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(gpa));

  @JsonKey(ignore: true)
  @override
  _$EducationCopyWith<_Education> get copyWith =>
      __$EducationCopyWithImpl<_Education>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationToJson(this);
  }
}

abstract class _Education implements Education {
  const factory _Education(
      String grade,
      String field,
      String university,
      String universityWebsite,
      String startYear,
      String endYear,
      String gpa) = _$_Education;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$_Education.fromJson;

  @override
  String get grade;
  @override
  String get field;
  @override
  String get university;
  @override
  String get universityWebsite;
  @override
  String get startYear;
  @override
  String get endYear;
  @override
  String get gpa;
  @override
  @JsonKey(ignore: true)
  _$EducationCopyWith<_Education> get copyWith =>
      throw _privateConstructorUsedError;
}
