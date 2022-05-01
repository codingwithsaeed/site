// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Portfolio _$PortfolioFromJson(Map<String, dynamic> json) {
  return _Portfolio.fromJson(json);
}

/// @nodoc
class _$PortfolioTearOff {
  const _$PortfolioTearOff();

  _Portfolio call(String title, String subtitle, String description,
      List<PortfolioPortion> portions) {
    return _Portfolio(
      title,
      subtitle,
      description,
      portions,
    );
  }

  Portfolio fromJson(Map<String, Object?> json) {
    return Portfolio.fromJson(json);
  }
}

/// @nodoc
const $Portfolio = _$PortfolioTearOff();

/// @nodoc
mixin _$Portfolio {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<PortfolioPortion> get portions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioCopyWith<Portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCopyWith<$Res> {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) then) =
      _$PortfolioCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String description,
      List<PortfolioPortion> portions});
}

/// @nodoc
class _$PortfolioCopyWithImpl<$Res> implements $PortfolioCopyWith<$Res> {
  _$PortfolioCopyWithImpl(this._value, this._then);

  final Portfolio _value;
  // ignore: unused_field
  final $Res Function(Portfolio) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? portions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      portions: portions == freezed
          ? _value.portions
          : portions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioPortion>,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioCopyWith<$Res> implements $PortfolioCopyWith<$Res> {
  factory _$PortfolioCopyWith(
          _Portfolio value, $Res Function(_Portfolio) then) =
      __$PortfolioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String subtitle,
      String description,
      List<PortfolioPortion> portions});
}

/// @nodoc
class __$PortfolioCopyWithImpl<$Res> extends _$PortfolioCopyWithImpl<$Res>
    implements _$PortfolioCopyWith<$Res> {
  __$PortfolioCopyWithImpl(_Portfolio _value, $Res Function(_Portfolio) _then)
      : super(_value, (v) => _then(v as _Portfolio));

  @override
  _Portfolio get _value => super._value as _Portfolio;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? portions = freezed,
  }) {
    return _then(_Portfolio(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      portions == freezed
          ? _value.portions
          : portions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioPortion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Portfolio implements _Portfolio {
  const _$_Portfolio(
      this.title, this.subtitle, this.description, this.portions);

  factory _$_Portfolio.fromJson(Map<String, dynamic> json) =>
      _$$_PortfolioFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String description;
  @override
  final List<PortfolioPortion> portions;

  @override
  String toString() {
    return 'Portfolio(title: $title, subtitle: $subtitle, description: $description, portions: $portions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Portfolio &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.portions, portions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(portions));

  @JsonKey(ignore: true)
  @override
  _$PortfolioCopyWith<_Portfolio> get copyWith =>
      __$PortfolioCopyWithImpl<_Portfolio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortfolioToJson(this);
  }
}

abstract class _Portfolio implements Portfolio {
  const factory _Portfolio(String title, String subtitle, String description,
      List<PortfolioPortion> portions) = _$_Portfolio;

  factory _Portfolio.fromJson(Map<String, dynamic> json) =
      _$_Portfolio.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get description;
  @override
  List<PortfolioPortion> get portions;
  @override
  @JsonKey(ignore: true)
  _$PortfolioCopyWith<_Portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}
