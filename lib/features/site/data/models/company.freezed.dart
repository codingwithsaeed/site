// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

  _Company call(String title, String name, String website, String startMonth,
      String startYear, String endMonth, String endYear, String city) {
    return _Company(
      title,
      name,
      website,
      startMonth,
      startYear,
      endMonth,
      endYear,
      city,
    );
  }

  Company fromJson(Map<String, Object?> json) {
    return Company.fromJson(json);
  }
}

/// @nodoc
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  String get title => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get startMonth => throw _privateConstructorUsedError;
  String get startYear => throw _privateConstructorUsedError;
  String get endMonth => throw _privateConstructorUsedError;
  String get endYear => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String name,
      String website,
      String startMonth,
      String startYear,
      String endMonth,
      String endYear,
      String city});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? website = freezed,
    Object? startMonth = freezed,
    Object? startYear = freezed,
    Object? endMonth = freezed,
    Object? endYear = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      startMonth: startMonth == freezed
          ? _value.startMonth
          : startMonth // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endMonth: endMonth == freezed
          ? _value.endMonth
          : endMonth // ignore: cast_nullable_to_non_nullable
              as String,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) then) =
      __$CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String name,
      String website,
      String startMonth,
      String startYear,
      String endMonth,
      String endYear,
      String city});
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(_Company _value, $Res Function(_Company) _then)
      : super(_value, (v) => _then(v as _Company));

  @override
  _Company get _value => super._value as _Company;

  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? website = freezed,
    Object? startMonth = freezed,
    Object? startYear = freezed,
    Object? endMonth = freezed,
    Object? endYear = freezed,
    Object? city = freezed,
  }) {
    return _then(_Company(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      startMonth == freezed
          ? _value.startMonth
          : startMonth // ignore: cast_nullable_to_non_nullable
              as String,
      startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endMonth == freezed
          ? _value.endMonth
          : endMonth // ignore: cast_nullable_to_non_nullable
              as String,
      endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Company implements _Company {
  const _$_Company(this.title, this.name, this.website, this.startMonth,
      this.startYear, this.endMonth, this.endYear, this.city);

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFromJson(json);

  @override
  final String title;
  @override
  final String name;
  @override
  final String website;
  @override
  final String startMonth;
  @override
  final String startYear;
  @override
  final String endMonth;
  @override
  final String endYear;
  @override
  final String city;

  @override
  String toString() {
    return 'Company(title: $title, name: $name, website: $website, startMonth: $startMonth, startYear: $startYear, endMonth: $endMonth, endYear: $endYear, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Company &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality()
                .equals(other.startMonth, startMonth) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.endMonth, endMonth) &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(startMonth),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(endMonth),
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyToJson(this);
  }
}

abstract class _Company implements Company {
  const factory _Company(
      String title,
      String name,
      String website,
      String startMonth,
      String startYear,
      String endMonth,
      String endYear,
      String city) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

  @override
  String get title;
  @override
  String get name;
  @override
  String get website;
  @override
  String get startMonth;
  @override
  String get startYear;
  @override
  String get endMonth;
  @override
  String get endYear;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$CompanyCopyWith<_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
