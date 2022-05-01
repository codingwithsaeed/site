// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_portion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortfolioPortion _$PortfolioPortionFromJson(Map<String, dynamic> json) {
  return _PortfolioPortion.fromJson(json);
}

/// @nodoc
class _$PortfolioPortionTearOff {
  const _$PortfolioPortionTearOff();

  _PortfolioPortion call(String title, String description,
      List<String> pictures, String link, String source, String locale) {
    return _PortfolioPortion(
      title,
      description,
      pictures,
      link,
      source,
      locale,
    );
  }

  PortfolioPortion fromJson(Map<String, Object?> json) {
    return PortfolioPortion.fromJson(json);
  }
}

/// @nodoc
const $PortfolioPortion = _$PortfolioPortionTearOff();

/// @nodoc
mixin _$PortfolioPortion {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get pictures => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioPortionCopyWith<PortfolioPortion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioPortionCopyWith<$Res> {
  factory $PortfolioPortionCopyWith(
          PortfolioPortion value, $Res Function(PortfolioPortion) then) =
      _$PortfolioPortionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      List<String> pictures,
      String link,
      String source,
      String locale});
}

/// @nodoc
class _$PortfolioPortionCopyWithImpl<$Res>
    implements $PortfolioPortionCopyWith<$Res> {
  _$PortfolioPortionCopyWithImpl(this._value, this._then);

  final PortfolioPortion _value;
  // ignore: unused_field
  final $Res Function(PortfolioPortion) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? pictures = freezed,
    Object? link = freezed,
    Object? source = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioPortionCopyWith<$Res>
    implements $PortfolioPortionCopyWith<$Res> {
  factory _$PortfolioPortionCopyWith(
          _PortfolioPortion value, $Res Function(_PortfolioPortion) then) =
      __$PortfolioPortionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      List<String> pictures,
      String link,
      String source,
      String locale});
}

/// @nodoc
class __$PortfolioPortionCopyWithImpl<$Res>
    extends _$PortfolioPortionCopyWithImpl<$Res>
    implements _$PortfolioPortionCopyWith<$Res> {
  __$PortfolioPortionCopyWithImpl(
      _PortfolioPortion _value, $Res Function(_PortfolioPortion) _then)
      : super(_value, (v) => _then(v as _PortfolioPortion));

  @override
  _PortfolioPortion get _value => super._value as _PortfolioPortion;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? pictures = freezed,
    Object? link = freezed,
    Object? source = freezed,
    Object? locale = freezed,
  }) {
    return _then(_PortfolioPortion(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortfolioPortion implements _PortfolioPortion {
  const _$_PortfolioPortion(this.title, this.description, this.pictures,
      this.link, this.source, this.locale);

  factory _$_PortfolioPortion.fromJson(Map<String, dynamic> json) =>
      _$$_PortfolioPortionFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final List<String> pictures;
  @override
  final String link;
  @override
  final String source;
  @override
  final String locale;

  @override
  String toString() {
    return 'PortfolioPortion(title: $title, description: $description, pictures: $pictures, link: $link, source: $source, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioPortion &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pictures, pictures) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pictures),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$PortfolioPortionCopyWith<_PortfolioPortion> get copyWith =>
      __$PortfolioPortionCopyWithImpl<_PortfolioPortion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortfolioPortionToJson(this);
  }
}

abstract class _PortfolioPortion implements PortfolioPortion {
  const factory _PortfolioPortion(
      String title,
      String description,
      List<String> pictures,
      String link,
      String source,
      String locale) = _$_PortfolioPortion;

  factory _PortfolioPortion.fromJson(Map<String, dynamic> json) =
      _$_PortfolioPortion.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get pictures;
  @override
  String get link;
  @override
  String get source;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$PortfolioPortionCopyWith<_PortfolioPortion> get copyWith =>
      throw _privateConstructorUsedError;
}
